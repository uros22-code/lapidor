Add-Type -AssemblyName System.Drawing

function Optimize-Img {
    param(
        [string]$inputPath,
        [string]$outputPath,
        [int]$maxDim = 1000,
        [long]$quality = 82L
    )

    if (-not (Test-Path $inputPath)) { 
        Write-Host "File not found: $inputPath"
        return $null 
    }

    $src = [System.Drawing.Image]::FromFile($inputPath)
    $w = $src.Width
    $h = $src.Height

    if ($w -gt $maxDim -or $h -gt $maxDim) {
        if ($w -gt $h) {
            $newW = $maxDim
            $newH = [int]($h * $maxDim / $w)
        } else {
            $newH = $maxDim
            $newW = [int]($w * $maxDim / $h)
        }
    } else {
        $newW = $w
        $newH = $h
    }

    $dest = New-Object System.Drawing.Bitmap($newW, $newH)
    $g = [System.Drawing.Graphics]::FromImage($dest)
    $g.Clear([System.Drawing.Color]::White)
    $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
    $g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $g.DrawImage($src, 0, 0, $newW, $newH)

    $jpegEncoder = [System.Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() | Where-Object { $_.MimeType -eq "image/jpeg" }
    $encoderParams = New-Object System.Drawing.Imaging.EncoderParameters(1)
    $encoderParams.Param[0] = New-Object System.Drawing.Imaging.EncoderParameter([System.Drawing.Imaging.Encoder]::Quality, $quality)

    $dest.Save($outputPath, $jpegEncoder, $encoderParams)

    $src.Dispose()
    $g.Dispose()
    $dest.Dispose()

    $bytes = [System.IO.File]::ReadAllBytes($outputPath)
    $b64 = [System.Convert]::ToBase64String($bytes)
    return "data:image/jpeg;base64," + $b64
}

$baseDir = "C:\Users\urosv\Desktop\LAPIDOR"
$assetsDir = "$baseDir\assets"
$brosuraImgDir = "$assetsDir\brosura_images"

$mapping = @{
    "hero" = "$assetsDir\lapidor_panoramic_hero.png"
    "craft" = "$assetsDir\rocno_delo_klesanje.jpg"
    "quarry" = "$assetsDir\vietnam_quarry_workshop.png"
    "bathtub" = "$assetsDir\bathtub.png"
    "bathroom" = "$assetsDir\hero_bathroom.png"
    "sink" = "$assetsDir\sink.png"
    "chiseled" = "$assetsDir\skulpture_kipi.png"
    "hotel" = "$assetsDir\hotelska_oprema.png"
    "wellness" = "$assetsDir\wellness_spa.png"
    "art" = "$assetsDir\sculpture.png"
    "sacred" = "$assetsDir\jezus_marija_marmor.png"
    "fountain" = "$assetsDir\vodnjaki.png"
    "real1" = "$assetsDir\bathtub.png"
    "real2" = "$brosuraImgDir\image13.png"
    "real3" = "$brosuraImgDir\image14.png"
    "real4" = "$brosuraImgDir\image17.png"
    "real5" = "$brosuraImgDir\image20.png"
    "real6" = "$brosuraImgDir\image23.png"
    "real7" = "$brosuraImgDir\image26.png"
    "real8" = "$brosuraImgDir\image27.png"
    "real9" = "$brosuraImgDir\image28.png"
}

$results = @{}

foreach ($key in $mapping.Keys) {
    $inPath = $mapping[$key]
    $outPath = "$assetsDir\b_opt_$key.jpg"
    Write-Host "Processing $key..."
    $b64 = Optimize-Img -inputPath $inPath -outputPath $outPath -maxDim 1000 -quality 82L
    if ($b64) {
        $results[$key] = @{
            "relPath" = "assets/b_opt_$key.jpg"
            "b64" = $b64
        }
    }
}

$json = $results | ConvertTo-Json -Depth 3
$json | Set-Content "$assetsDir\brosura_base64.json" -Encoding UTF8
Write-Host "Done! Saved base64 data to $assetsDir\brosura_base64.json"
