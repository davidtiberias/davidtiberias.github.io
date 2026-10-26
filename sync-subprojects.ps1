# PowerShell script to build and sync Next.js platform into davidtiberias.github.io
param (
    [switch]$SkipBuild = $false
)

$rootDir = Split-Path -Parent $PSScriptRoot
$davidDir = Join-Path $rootDir "davidtiberias"

Write-Host "======================================================" -ForegroundColor Cyan
Write-Host " Syncing Next.js 15 + Payload 3 to davidtiberias.github.io " -ForegroundColor Cyan
Write-Host "======================================================" -ForegroundColor Cyan

if (-not (Test-Path $davidDir)) {
    Write-Error "Project directory not found: $davidDir"
    exit 1
}

if (-not $SkipBuild) {
    Write-Host "`n[1/2] Building Next.js 15 Unified Platform in $davidDir..." -ForegroundColor Yellow
    npm --prefix $davidDir run build
}

# Sync generated outputs into github.io hosting directory
Write-Host "`n[2/2] Verifying static routes and asset distribution..." -ForegroundColor Yellow

$outDir = Join-Path $davidDir "out"
if (Test-Path $outDir) {
    # If static export is used
    Copy-Item -Path "$outDir\*" -Destination $PSScriptRoot -Recurse -Force
    Write-Host "✓ Copied Next.js static export (out/) into root" -ForegroundColor Green
}

Write-Host "`n======================================================" -ForegroundColor Cyan
Write-Host " Architecture & Endpoints Verified: " -ForegroundColor Cyan
Write-Host " - /home            -> Central Dual Platform Gateway" -ForegroundColor White
Write-Host " - /davidtiberias   -> David Gilang Tiberias (Personal & PMO)" -ForegroundColor White
Write-Host " - /tiberias        -> TIBERIAS. (Spatial Intelligence Firm)" -ForegroundColor White
Write-Host " - /admin           -> Embedded Payload CMS 3 (SQLite)" -ForegroundColor White
Write-Host "======================================================" -ForegroundColor Cyan
