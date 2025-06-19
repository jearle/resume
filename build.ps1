#!/usr/bin/env pwsh

param (
    [string]$suffix = "",
    [string]$margin = "0.35in",
    [switch]$help
)

function Show-Usage {
    @"
Usage: .\build.ps1 [--suffix SUFFIX] [--margin MARGIN]
  --suffix   set the suffix value
  --margin   set the margin value
  -h|--help  show this help
"@
    exit 1
}

# Manual argument parsing to support GNU-style long flags
$argList = $args
for ($i = 0; $i -lt $argList.Length; ) {
    switch ($argList[$i]) {
        "--suffix" {
            if ($i + 1 -ge $argList.Length) { Show-Usage }
            $suffix = "-" + $argList[$i + 1]
            $i += 2
        }
        "--margin" {
            if ($i + 1 -ge $argList.Length) { Show-Usage }
            $margin = $argList[$i + 1]
            $i += 2
        }
        "-h" | "--help" {
            Show-Usage
        }
        default {
            Write-Error "Unknown option: $($argList[$i])"
            Show-Usage
        }
    }
}

$resumeName = "Resume-Jesse-Earle$suffix"
$resumeMd   = "$resumeName.md"
$resumeHtml = "$resumeName.html"
$resumePdf  = "$resumeName.pdf"
$resumeDocx = "$resumeName.docx"

if (Test-Path "Resume-Jesse-Earle.pdf") {
    Write-Host "Resume PDF exists"
}

Write-Host "generating $resumeHtml from $resumeMd"
Write-Host "generating $resumePdf from $resumeMd"
Write-Host "generating $resumeDocx from $resumeMd"
Write-Host "with margin $margin"

pandoc -o $resumeHtml $resumeMd
pandoc -o $resumePdf  $resumeMd -V "geometry:margin=$margin"
pandoc -o $resumeDocx $resumeMd -V "geometry:margin=$margin"
