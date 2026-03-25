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
- `xelatex`
- `Roboto Light` and `Roboto Condensed Medium`
- `preamble.tex` at the repo root

Examples:

```bash
./build
./build --suffix Full
./build --margin 0.35in
```

## Notes

- `build` reads `Resume-Jesse-Earle[-SUFFIX].tex.md` and writes outputs in the repo root
- `build.ps1` is present, but it still targets `Resume-Jesse-Earle[-SUFFIX].md`, not the current `*.tex.md` sources
