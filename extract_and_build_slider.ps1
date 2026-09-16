Add-Type -AssemblyName System.IO.Compression.FileSystem
Add-Type -AssemblyName System.Drawing

$baseDir = "C:\Users\urosv\Desktop\LAPIDOR"
$slikovno = "$baseDir\Slikovno gradivo"
$assetsDir = "$baseDir\assets"
$tempDir = "$baseDir\scratch_temp_extract"

if (Test-Path $tempDir) { Remove-Item -Path $tempDir -Recurse -Force }
New-Item -ItemType Directory -Path $tempDir | Out-Null

# 1. Extract Skulpture transparentno
$zipSkulpture = "$slikovno\Skulpture transparentno-20260728T183353Z-1-001.zip"
if (Test-Path $zipSkulpture) {
    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipSkulpture, "$tempDir\skulpture")
}

# 2. Extract Kopalnica
$zipKopalnica = "$slikovno\Kopalnica-20260728T183345Z-1-001.zip"
if (Test-Path $zipKopalnica) {
    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipKopalnica, "$tempDir\kopalnica")
}

function Create-CleanCardImg {
    param(
        [string]$inputPath,
        [string]$outputPath,
        [int]$canvasW = 800,
        [int]$canvasH = 600,
        [int]$pad = 30
    )

    if (-not (Test-Path $inputPath)) {
        Write-Host "Missing: $inputPath"
        return
    }

    $src = [System.Drawing.Image]::FromFile($inputPath)
    $sw = $src.Width
    $sh = $src.Height

    # Calculate scale to fit inside canvas minus padding
    $targetW = $canvasW - ($pad * 2)
    $targetH = $canvasH - ($pad * 2)

    $scaleW = $targetW / $sw
    $scaleH = $targetH / $sh
    $scale = [Math]::Min($scaleW, $scaleH)

    $newW = [int]($sw * $scale)
    $newH = [int]($sh * $scale)

    $posX = [int](($canvasW - $newW) / 2)
    $posY = [int](($canvasH - $newH) / 2)

    $bmp = New-Object System.Drawing.Bitmap($canvasW, $canvasH, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
    $g = [System.Drawing.Graphics]::FromImage($bmp)
    
    # Smooth rendering settings
    $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
    $g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $g.CompositingQuality = [System.Drawing.Drawing2D.CompositingQuality]::HighQuality

    # Dark luxury gradient background
    $rect = New-Object System.Drawing.Rectangle(0, 0, $canvasW, $canvasH)
    $c1 = [System.Drawing.Color]::FromArgb(255, 28, 31, 38)
    $c2 = [System.Drawing.Color]::FromArgb(255, 14, 16, 20)
    $brush = New-Object System.Drawing.Drawing2D.LinearGradientBrush($rect, $c1, $c2, 45)
    $g.FillRectangle($brush, $rect)
    $brush.Dispose()

    # Draw image centered
    $g.DrawImage($src, $posX, $posY, $newW, $newH)

    # Save as compressed JPEG
    $jpegEncoder = [System.Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() | Where-Object { $_.MimeType -eq "image/jpeg" }
    $encoderParams = New-Object System.Drawing.Imaging.EncoderParameters(1)
    $encoderParams.Param[0] = New-Object System.Drawing.Imaging.EncoderParameter([System.Drawing.Imaging.Encoder]::Quality, 88L)

    $bmp.Save($outputPath, $jpegEncoder, $encoderParams)

    $src.Dispose()
    $g.Dispose()
    $bmp.Dispose()
    Write-Host "Created card image: $outputPath ($canvasW x $canvasH)"
}

# List of 12 curated products
$items = @(
    @{ Key = "gal1"; Path = "$tempDir\skulpture\Skulpture transparentno\shiva_transparent (2).png"; Alt = "Ročno klesana skulptura Shiva iz naravnega vietnamskega marmorja"; Caption = "Unikatna marmorna skulptura Shiva z ročno klesanimi detajli" },
    @{ Key = "gal2"; Path = "$slikovno\in stock\2 Jesus\2.jpg"; Alt = "Sakralni kip Jezusa Kristusa iz vietnamskega kristalnega marmorja"; Caption = "Sakralni kip Jezusa Kristusa iz masivnega marmorja" },
    @{ Key = "gal3"; Path = "$slikovno\in stock\3 Mary 1\3.jpg"; Alt = "Sakralna skulptura Device Marije z ročno obdelanimi detajli"; Caption = "Ročno klesan sakralni kip Device Marije z zlato ornamentiko" },
    @{ Key = "gal4"; Path = "$slikovno\in stock\5 Jade buddha\5.jpg"; Alt = "Prestižni kip Budhe iz naravnega kristalnega marmorja"; Caption = "Prestižni kip Budhe iz naravnega vietnamskega marmorja" },
    @{ Key = "gal5"; Path = "$slikovno\in stock\6 Mother Teresa\6.jpg"; Alt = "Sakralna plastika Matere Terezije iz masivnega naravnega marmorja"; Caption = "Sakralni kip Matere Terezije iz naravnega kristalnega marmorja" },
    @{ Key = "gal6"; Path = "$tempDir\kopalnica\Kopalnica\LB 01.png"; Alt = "Masivna samostoječa kopalniška kad iz naravnega marmorja"; Caption = "Masivna samostoječa kopalniška kad iz vietnamskega marmorja" },
    @{ Key = "gal7"; Path = "$tempDir\kopalnica\Kopalnica\LB 24.png"; Alt = "Ekskluzivni marmorni umivalnik z ročno polirano površino"; Caption = "Prestižni umivalnik iz naravnega kristalno belega marmorja" },
    @{ Key = "gal8"; Path = "$slikovno\in stock\13 Green phoenix\13.jpg"; Alt = "Umetniška skulptura Fenix z unikatno strukturo kamna"; Caption = "Umetniška skulptura Fenix iz naravnega obarvanega marmorja" },
    @{ Key = "gal9"; Path = "$slikovno\in stock\24 Four season girl\24.jpg"; Alt = "Klasična ženska figuralna skulptura po meri"; Caption = "Klasična marmorna figuralna skulptura po naročilu" },
    @{ Key = "gal10"; Path = "$slikovno\in stock\26 Guadalupe\26.jpg"; Alt = "Devica Marija Gvadalupska z zvezdnatim oblačilom"; Caption = "Sakralni kip Device Marije Gvadalupske iz marmorja" },
    @{ Key = "gal11"; Path = "$slikovno\in stock\27 Octopus\IMG_20251218_094740.png"; Alt = "Moderna abstraktna skulptura za prestižne interiere"; Caption = "Unikatna abstraktna skulptura za moderne luksuzne ambiente" },
    @{ Key = "gal12"; Path = "$slikovno\in stock\10 elephant\10.jpg"; Alt = "Umetniško klesana figura slona iz naravnega marmorja"; Caption = "Masivna figuralna plastika slona iz naravnega marmorja" }
)

foreach ($item in $items) {
    $out = "$assetsDir\gal_$($item.Key).jpg"
    Create-CleanCardImg -inputPath $item.Path -outputPath $out -canvasW 800 -canvasH 600 -pad 35
}

# Cleanup temp extract
if (Test-Path $tempDir) { Remove-Item -Path $tempDir -Recurse -Force }
Write-Host "All slider images generated successfully!"
