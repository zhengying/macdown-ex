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

# 1. Initialize and update submodules
echo "📦 Updating git submodules..."
git submodule update --init --recursive

# 2. Build external dependency (peg-markdown-highlight)
echo "🔨 Building peg-markdown-highlight..."
make -C Dependency/peg-markdown-highlight

# 3. Build the project using xcodebuild
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
