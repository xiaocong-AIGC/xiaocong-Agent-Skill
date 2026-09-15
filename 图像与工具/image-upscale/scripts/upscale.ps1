param(
    [string]$InputPath = "D:\AI\ImageUpscale\input",
    [string]$OutputRoot = "D:\AI\ImageUpscale\output",

    [ValidateSet("photo", "product", "anime", "illustration", "video")]
    [string]$Mode = "photo",

    [ValidateSet(2, 3, 4)]
    [int]$Scale = 4,

    [ValidateSet("png", "jpg", "webp")]
    [string]$Format = "png",

    [int]$TileSize = 0
)

$ErrorActionPreference = "Stop"

$ExePath = "D:\AI\ImageUpscale\tools\realesrgan\realesrgan-ncnn-vulkan.exe"
$ModelPath = Join-Path (Split-Path -Parent $ExePath) "models"

if (-not (Test-Path $ExePath)) {
    throw "Real-ESRGAN executable not found: $ExePath"
}

if (-not (Test-Path $ModelPath)) {
    throw "Real-ESRGAN models folder not found: $ModelPath"
}

if (-not (Test-Path $InputPath)) {
    throw "Input path not found: $InputPath"
}

New-Item -ItemType Directory -Force -Path $OutputRoot | Out-Null

$InputItem = Get-Item -LiteralPath $InputPath
if ($InputItem.PSIsContainer) {
    $ImageFiles = @(Get-ChildItem -LiteralPath $InputPath -File -Recurse | Where-Object {
        $_.Extension -match '^\.(png|jpg|jpeg|webp|bmp)$'
    })
} else {
    $ImageFiles = @($InputItem | Where-Object {
        $_.Extension -match '^\.(png|jpg|jpeg|webp|bmp)$'
    })
}

if ($ImageFiles.Count -eq 0) {
    Write-Host "No image files found in input path: $InputPath"
    Write-Host "Please put images into this folder and run again."
    exit 0
}

switch ($Mode) {
    "photo"        { $Model = "realesrgan-x4plus" }
    "product"      { $Model = "realesrgan-x4plus" }
    "anime"        { $Model = "realesrgan-x4plus-anime" }
    "illustration" { $Model = "realesrgan-x4plus-anime" }
    "video"        { $Model = "realesr-animevideov3" }
    default        { $Model = "realesrgan-x4plus" }
}

$Stamp = Get-Date -Format "yyyyMMdd_HHmmss"
$OutputPath = Join-Path $OutputRoot "upscaled_$($Mode)_$($Scale)x_$Stamp"

New-Item -ItemType Directory -Force -Path $OutputPath | Out-Null

Write-Host "Input:  $InputPath"
Write-Host "Output: $OutputPath"
Write-Host "Mode:   $Mode"
Write-Host "Model:  $Model"
Write-Host "Scale:  $Scale x"
Write-Host "Format: $Format"
Write-Host "Image count: $($ImageFiles.Count)"

$Args = @(
    "-i", $InputPath,
    "-o", $OutputPath,
    "-n", $Model,
    "-s", $Scale,
    "-t", $TileSize,
    "-m", $ModelPath,
    "-f", $Format
)

& $ExePath @Args

if ($LASTEXITCODE -ne 0) {
    throw "Real-ESRGAN failed with exit code $LASTEXITCODE"
}

$Files = @(Get-ChildItem -LiteralPath $OutputPath -File -Recurse | Where-Object {
    $_.Extension -match '^\.(png|jpg|jpeg|webp)$'
})

Write-Host ""
Write-Host "Done."
Write-Host "Output folder: $OutputPath"
Write-Host "Generated files: $($Files.Count)"
