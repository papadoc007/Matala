# Compile main.tex with LuaLaTeX + BibTeX (Assignment 04)
$ErrorActionPreference = "Stop"
$MiKTeXBin = Join-Path $env:LOCALAPPDATA "Programs\MiKTeX\miktex\bin\x64"
if (-not (Test-Path (Join-Path $MiKTeXBin "lualatex.exe"))) {
    $MiKTeXBin = "C:\Program Files\MiKTeX\miktex\bin\x64"
}
$env:PATH = "$MiKTeXBin;$env:PATH"
# Prevent MiKTeX GUI install dialogs during batch compile
$env:MIKTEX_ALLOW_UNSAFE_ADMIN_INSTALL = "1"
$env:MIKTEX_ENABLE_INSTALLER = "1"

Set-Location $PSScriptRoot

function Invoke-LuaLaTeX {
    param([string]$File)
    Write-Host ">> lualatex $File"
    & lualatex -interaction=nonstopmode -halt-on-error --enable-installer $File
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}

Invoke-LuaLaTeX "main.tex"
Write-Host ">> bibtex main"
& bibtex main
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
Invoke-LuaLaTeX "main.tex"
Invoke-LuaLaTeX "main.tex"

Write-Host "Done. Output: main.pdf"
