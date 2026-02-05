#!/bin/bash
set -e

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

xcodebuild \
  -workspace MacDown.xcworkspace \
  -scheme MacDown \
  -configuration Release \
  clean build \
  | xcpretty || echo "xcpretty not found, showing raw output" # Pipe to xcpretty if available for nicer output

echo "✅ Build completed successfully!"
