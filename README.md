# Resume

Resume sources and generated outputs.

## Files

- `Resume-Jesse-Earle.tex.md`: short version source
- `Resume-Jesse-Earle-Full.tex.md`: full version source
- `Resume-Jesse-Earle.{html,pdf,docx}`: short version outputs
- `Resume-Jesse-Earle-Full.{html,pdf,docx}`: full version outputs
- `build`: current bash build script
- `build.ps1`: PowerShell build script

## Build

Requirements for `build`:

- `pandoc`
- a TeX distribution that provides `xelatex`
- `Roboto Light` and `Roboto Condensed Medium`
- `preamble.tex` at the repo root

## Install Requirements

### macOS

- Install `pandoc`:

```bash
brew install pandoc
```

- Install a TeX distribution with `xelatex`:

```bash
brew install --cask mactex-no-gui
```

- Install the `Roboto` and `Roboto Condensed` font families
- Verify the toolchain:

```bash
pandoc --version
xelatex --version
```

### Windows

- Install `pandoc`:

```powershell
winget install --id JohnMacFarlane.Pandoc
```

- Install a TeX distribution with `xelatex`:

```powershell
winget install --id MiKTeX.MiKTeX
```

- Install the `Roboto` and `Roboto Condensed` font families
- Restart the terminal after install so `pandoc` and `xelatex` are on `PATH`
- Verify the toolchain:

```powershell
pandoc --version
xelatex --version
```

### Linux

- Debian or Ubuntu example:

```bash
sudo apt update
sudo apt install pandoc texlive-xetex fonts-roboto
```

- On other distros, install `pandoc`, a TeX package that provides `xelatex`, and the `Roboto` and `Roboto Condensed` font families
- Verify the toolchain:

```bash
pandoc --version
xelatex --version
```

Examples:

```bash
./build
./build --suffix Full
./build --margin 0.35in
```

## Notes

- `build` reads `Resume-Jesse-Earle[-SUFFIX].tex.md` and writes outputs in the repo root
- `build` requires `preamble.tex`, but that file is not currently checked into the repo
- `build.ps1` is present, but it still targets `Resume-Jesse-Earle[-SUFFIX].md`, not the current `*.tex.md` sources
