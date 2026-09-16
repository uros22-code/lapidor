$files = @(
    "C:\Users\urosv\Desktop\LAPIDOR\index.html",
    "C:\Users\urosv\Desktop\LAPIDOR\brosura.html",
    "C:\Users\urosv\Desktop\LAPIDOR\main.js",
    "C:\Users\urosv\Desktop\LAPIDOR\build_brosura_html.ps1"
)

# UTF-8 byte sequences:
# 'â' = 0xC3, 0xA2
# ' ' = 0x20
# '–' = 0xE2, 0x80, 0x93

foreach ($file in $files) {
    if (Test-Path $file) {
        $bytes = [System.IO.File]::ReadAllBytes($file)
        $newBytes = [System.Collections.Generic.List[byte]]::new()
        
        for ($i = 0; $i -lt $bytes.Length; $i++) {
            # Check pattern 1: 0xC3 0xA2 0x20 0xE2 0x80 0x93 ("â –")
            if ($i + 5 -lt $bytes.Length -and $bytes[$i] -eq 0xC3 -and $bytes[$i+1] -eq 0xA2 -and $bytes[$i+2] -eq 0x20 -and $bytes[$i+3] -eq 0xE2 -and $bytes[$i+4] -eq 0x80 -and $bytes[$i+5] -eq 0x93) {
                $newBytes.Add(0x20)
                $newBytes.Add(0xE2)
                $newBytes.Add(0x80)
                $newBytes.Add(0x93)
                $i += 5
            }
            # Check pattern 2: 0xC3 0xA2 0xE2 0x80 0x93 ("â–")
            elseif ($i + 4 -lt $bytes.Length -and $bytes[$i] -eq 0xC3 -and $bytes[$i+1] -eq 0xA2 -and $bytes[$i+2] -eq 0xE2 -and $bytes[$i+3] -eq 0x80 -and $bytes[$i+4] -eq 0x93) {
                $newBytes.Add(0x20)
                $newBytes.Add(0xE2)
                $newBytes.Add(0x80)
                $newBytes.Add(0x93)
                $i += 4
            }
            else {
                $newBytes.Add($bytes[$i])
            }
        }
        
        [System.IO.File]::WriteAllBytes($file, $newBytes.ToArray())
        Write-Host "Byte replaced: $file"
    }
}
