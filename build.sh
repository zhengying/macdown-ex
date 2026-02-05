#!/bin/bash
set -e
set -o pipefail

# MacDown Build Script

echo "🚀 Starting MacDown build process..."

# 1. Initialize and update submodules
echo "📦 Updating git submodules..."
git submodule update --init --recursive

# 2. Install Ruby dependencies (including CocoaPods)
echo "💎 Installing Bundler dependencies..."
# Check if bundler is installed, if not install it
if ! command -v bundle &> /dev/null; then
    echo "Bundler not found. Installing bundler..."
    gem install bundler
fi
bundle install

# 3. Install CocoaPods dependencies
echo "🥥 Installing CocoaPods..."
bundle exec pod install

# 4. Build external dependency (peg-markdown-highlight)
echo "🔨 Building peg-markdown-highlight..."
make -C Dependency/peg-markdown-highlight

# 5. Build the project using xcodebuild
echo "🏗️  Building MacDown.xcworkspace..."
# Using xcodebuild to build the project
# -workspace: The workspace file
# -scheme: The scheme to build (MacDown)
# -configuration: Release (usually what you want for a "build")
# -derivedDataPath: Keep build artifacts in a known location (optional, but good for CI/scripts)
# ARCHS="x86_64 arm64": Build for both Intel and Apple Silicon
# ONLY_ACTIVE_ARCH=NO: Ensure we build all architectures, not just the one matching the current machine

if command -v xcpretty &> /dev/null; then
  xcodebuild \
    -workspace MacDown.xcworkspace \
    -scheme MacDown \
    -configuration Release \
    ARCHS="x86_64 arm64" \
    ONLY_ACTIVE_ARCH=NO \
    clean build \
    | xcpretty
else
  xcodebuild \
    -workspace MacDown.xcworkspace \
    -scheme MacDown \
    -configuration Release \
    ARCHS="x86_64 arm64" \
    ONLY_ACTIVE_ARCH=NO \
    clean build
fi

echo "✅ Build completed successfully!"
