# MacDown Technical Documentation

## Overview
MacDown is an open-source Markdown editor for macOS, released under the MIT License. It is heavily influenced by Mou. The project uses Objective-C and targets macOS 10.8+.

## Architecture

### Core Components
- **Application Controller**: `MPMainController` manages the application lifecycle, preferences window, and global state.
- **Document Model**: `MPDocument` (subclass of `NSDocument`) handles file I/O, auto-saving, and coordinates the editor and preview views.
- **Editor**: `MPEditorView` (subclass of `NSTextView`) provides the Markdown editing interface with syntax highlighting and auto-completion.
- **Preview**: `WebView` (WebKit Legacy) is used to render the live HTML preview.
- **Renderer**: `MPRenderer` bridges the Markdown text to HTML output using the `hoedown` library.

### Rendering Pipeline
1.  **Input**: Markdown text from `MPEditorView`.
2.  **Parsing & Conversion**: `MPRenderer` uses `hoedown` (C library) to convert Markdown to HTML.
3.  **Templating**: `handlebars-objc` is used to inject the HTML content into a predefined HTML template (CSS, JavaScript).
4.  **Display**: The resulting HTML is loaded into `WebView`.
5.  **Syntax Highlighting (Preview)**: `Prism.js` is injected into the `WebView` to highlight code blocks on the client side.
6.  **Math**: `MathJax` is supported for rendering mathematical equations.

### Editor Features
- **Syntax Highlighting (Editor)**: Uses a custom PEG (Parsing Expression Grammar) parser via `peg-markdown-highlight` (based on `greg`). The grammar is defined in `Dependency/peg-markdown-highlight/pmh_grammar.leg`.
- **Auto-completion**: `NSTextView+Autocomplete` provides completion suggestions.

## Technology Stack

### Language & Platform
- **Language**: Objective-C
- **Platform**: macOS 10.8+
- **Build System**: Xcode, CocoaPods

### External Dependencies (via CocoaPods)
- **hoedown**: High-performance Markdown parser (C library).
- **handlebars-objc**: Mustache-like templating for Objective-C.
- **MASPreferences**: Preferences window controller.
- **PAPreferences**: Key-value observation for preferences.
- **Sparkle**: Software update framework.
- **GBCli**: Command-line interface helper (for `macdown-cmd`).
- **LibYAML**: YAML parser (likely for front-matter or configuration).
- **M13OrderedDictionary**: Ordered dictionary implementation.
- **JJPluralForm**: Pluralization helper.

### CI/CD
- **Travis CI**: Configured via `.travis.yml` and `Gemfile` (includes `travis` gem).

### Internal/Submodule Dependencies
- **peg-markdown-highlight**: Custom syntax highlighter for the editor. Located in `Dependency/peg-markdown-highlight`.
- **Prism**: JavaScript syntax highlighter for the preview. Located in `Dependency/prism`. Note: This is a git submodule. If missing, preview highlighting will not work.

## Directory Structure
- `MacDown/Code/Application`: App delegate, main controllers.
- `MacDown/Code/Document`: Document logic, renderer.
- `MacDown/Code/Extension`: Categories and helper extensions.
- `MacDown/Code/Preferences`: Preference view controllers.
- `MacDown/Code/View`: Custom views (Editor, SplitView).
- `MacDown/Code/Utility`: Utilities for math, plugins, etc.
- `Dependency`: Contains vendored dependencies and local pods (`peg-markdown-highlight`).
- `MacDown/Resources`: Assets, templates, etc.

## Build Requirements
1.  **CocoaPods**: Required to install dependencies (`pod install`).
2.  **Xcode**: Required for building the project.
3.  **Submodules**: `git submodule update --init --recursive` is required for `Prism`.

## Build Notes (Attempted)
- **Dependencies**: Successfully installed via `bundle install` and `bundle exec pod install`.
- **Prism**: Manually downloaded and installed PrismJS master branch into `Dependency/prism` to satisfy the dependency (since git submodule was unavailable).
- **Compilation**: Failed due to sandbox restrictions (`TRAE Sandbox Error` accessing `~/Library/HTTPStorages`). This is a platform limitation preventing `xcodebuild` from accessing user library directories, even when `HOME` is overridden.
- **Signing**: The environment has a valid identity: `"Apple Distribution: zheng ying (98M5U6AHSC)"`.
  - **Command**: Use `CODE_SIGN_IDENTITY="Apple Distribution: zheng ying (98M5U6AHSC)"` in the `xcodebuild` command.
- **Legacy Targets**: The project targets macOS 10.8+, which triggers warnings in modern Xcode versions.
  - **Issue**: `ld: file not found: .../libarclite_macosx.a`
  - **Fix**: 
    1. Updated `Podfile` platform to `10.13` and added a `post_install` hook to enforce `MACOSX_DEPLOYMENT_TARGET = 10.13` for all pods.
    2. Updated `MACOSX_DEPLOYMENT_TARGET` in `MacDown.xcodeproj/project.pbxproj` from `10.8` to `10.13`.
    This removes the dependency on the missing `libarclite` library in modern Xcode.

- **Prism Integration**:
  - **Issue**: Build failed with `cp: .../Dependency/prism/components.js: No such file or directory`.
  - **Fix**: Updated the "Fetch Prism Resources" script in `MacDown.xcodeproj` to copy `components.json` instead of `components.js`, as PrismJS structure has changed.

## Notes for Modification
- The project uses Legacy WebKit (`WebView`). Modernizing it to `WKWebView` would be a significant task due to API differences.
- The editor highlighting relies on `peg-markdown-highlight`. Changes to syntax highlighting logic require modifying the PEG grammar and regenerating the parser.
