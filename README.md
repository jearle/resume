# Jesse Earle Resume Builder

A tool for building professional resumes in multiple formats (PDF, HTML, DOCX) from a single source of truth Markdown document. This eliminates the need to maintain separate resume files and ensures consistency across all formats.

## Features

- Single Markdown source file
- Multiple output formats
- Cross-platform support (macOS, Windows)
- Automated build process

## Prerequisites

### macOS

- [Homebrew](https://brew.sh/) package manager
- [pandoc](https://pandoc.org/) document converter
- BasicTeX (for LaTeX/PDF support)

```bash
# Install dependencies
brew install pandoc
brew install --cask basictex
# or alternatively: brew install --cask mactex (full LaTeX distribution)
```

### Windows

- [pandoc](https://pandoc.org/installing.html#windows)
- [MiKTeX](https://miktex.org/) (for PDF generation)
- PowerShell or Command Prompt

## Usage

1. Edit your resume content in `Resume-Jesse-Earle.md`
2. Run the build script:
   - **macOS/Linux**: `./build`
   - **Windows**: `.\build.bat`
3. Find generated files in the current directory

### Command-Line Options

```bash
./build -h
Usage: ./build [--suffix SUFFIX] [--margin MARGIN]
  --suffix   set the suffix value
  --margin   set the margin value
  -h|--help  show this help
```

## Output Formats

- `Resume-Jesse-Earle.pdf` - Professional PDF format
- `Resume-Jesse-Earle.html` - Web-friendly HTML
- `Resume-Jesse-Earle.docx` - Microsoft Word format

## Troubleshooting

- **LaTeX errors**: Ensure BasicTeX/MiKTeX is properly installed
- **Path issues**: Make sure pandoc is in your system PATH
- **Permission denied**: Run `chmod +x build.sh` on macOS/Linux
