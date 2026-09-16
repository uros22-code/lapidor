$files = @(
    "C:\Users\urosv\Desktop\LAPIDOR\index.html",
    "C:\Users\urosv\Desktop\LAPIDOR\brosura.html",
    "C:\Users\urosv\Desktop\LAPIDOR\main.js",
    "C:\Users\urosv\Desktop\LAPIDOR\build_brosura_html.ps1"
)

$utf8NoBom = New-Object System.Text.UTF8Encoding($false)

foreach ($file in $files) {
    if (Test-Path $file) {
        $lines = [System.IO.File]::ReadAllLines($file, [System.Text.Encoding]::UTF8)
        $newLines = @()
        foreach ($line in $lines) {
            $newLine = $line -replace 'â€“', '–'
            $newLines += $newLine
        }
        [System.IO.File]::WriteAllLines($file, $newLines, $utf8NoBom)
        Write-Host "Done: $file"
    }
}
