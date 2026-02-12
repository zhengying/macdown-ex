#!/bin/bash
set -e
set -o pipefail

# MacDown Build Script

echo "🚀 Starting MacDown build process..."

if [[ "${BUILD_PROXY:-}" == "1" ]]; then
  export http_proxy="${http_proxy:-http://127.0.0.1:10808}"
  export https_proxy="${https_proxy:-http://127.0.0.1:10808}"
  export all_proxy="${all_proxy:-socks5://127.0.0.1:10808}"
  export HTTP_PROXY="${HTTP_PROXY:-$http_proxy}"
  export HTTPS_PROXY="${HTTPS_PROXY:-$https_proxy}"
  export ALL_PROXY="${ALL_PROXY:-$all_proxy}"
fi

if [[ -z "${DEVELOPER_DIR:-}" ]]; then
  active_dev_dir="$(xcode-select -p 2>/dev/null || true)"
  if [[ "${active_dev_dir}" == "/Library/Developer/CommandLineTools" ]]; then
    for candidate in \
      "/Applications/Xcode.app/Contents/Developer" \
      "/Applications/Xcode-beta.app/Contents/Developer"
    do
      if [[ -d "${candidate}" ]]; then
        export DEVELOPER_DIR="${candidate}"
        echo "ℹ️  Using DEVELOPER_DIR=${DEVELOPER_DIR}"
        break
      fi
    done
  fi
fi

active_dev_dir="$(xcode-select -p 2>/dev/null || true)"
if [[ "${active_dev_dir}" == "/Library/Developer/CommandLineTools" ]] && [[ -z "${DEVELOPER_DIR:-}" ]]; then
  echo "❌ xcodebuild requires Xcode. Active developer dir is CommandLineTools."
  echo "   Fix with: sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer"
  echo "   Or run:  DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer ./build.sh"
  exit 1
fi

# 1. Build external dependency (peg-markdown-highlight)
echo "🔨 Building peg-markdown-highlight..."
make -C Dependency/peg-markdown-highlight

# 2. Build the project using xcodebuild
echo "🏗️  Building MacDown.xcodeproj..."
# Using xcodebuild to build the project
# -project: The project file
# -scheme: The scheme to build (MacDown)
# -configuration: Release (usually what you want for a "build")
# -derivedDataPath: Keep build artifacts in a known location (optional, but good for CI/scripts)
# ARCHS="x86_64 arm64": Build for both Intel and Apple Silicon
# ONLY_ACTIVE_ARCH=NO: Ensure we build all architectures, not just the one matching the current machine

if command -v xcpretty &> /dev/null; then
  xcodebuild \
    -project MacDown.xcodeproj \
    -scheme MacDown \
    -configuration Release \
    ARCHS="x86_64 arm64" \
    ONLY_ACTIVE_ARCH=NO \
    clean build \
    | xcpretty
else
  xcodebuild \
    -project MacDown.xcodeproj \
    -scheme MacDown \
    -configuration Release \
    ARCHS="x86_64 arm64" \
    ONLY_ACTIVE_ARCH=NO \
    clean build
fi

echo "✅ Build completed successfully!"
