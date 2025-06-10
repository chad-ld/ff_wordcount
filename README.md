# Word Counter Firefox Extension

A simple Firefox extension that counts words and characters in selected text.

## Features

- Right-click context menu on selected text
- Shows word count and character count in a popup
- Works on any webpage

## Installation

### Option 1: Download from Releases
1. Go to the [Releases page](../../releases)
2. Download the latest `.xpi` file
3. Open Firefox and go to `about:addons`
4. Click the gear icon → "Install Add-on From File..."
5. Select the downloaded `.xpi` file

### Option 2: Temporary Installation (Development)
1. Download or clone this repository
2. Open Firefox and go to `about:debugging`
3. Click "This Firefox" → "Load Temporary Add-on..."
4. Select the `manifest.json` file

### Option 3: Firefox Developer Edition
If you get "corrupt" errors, use Firefox Developer Edition which is more lenient with unsigned extensions.

## Development

### Prerequisites
- Node.js and npm
- Firefox

### Setup
```bash
npm install -g web-ext
```

### Commands
```bash
# Run extension in development mode
npm start
# or
web-ext run

# Build XPI file
npm run build
# or
web-ext build

# Lint extension
npm run lint
# or
web-ext lint
```

## Usage

1. Select any text on a webpage
2. Right-click to open context menu
3. Click "Word Count"
4. View the word and character count in the alert

## Building Releases

This project uses GitHub Actions to automatically build XPI files:

1. Create a new tag: `git tag v1.0.1`
2. Push the tag: `git push origin v1.0.1`
3. GitHub Actions will automatically build and attach the XPI to the release

## License

MIT License - see LICENSE file for details
