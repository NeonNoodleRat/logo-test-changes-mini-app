# PowerShell script to list all installed fonts
# Run this in PowerShell: .\list-fonts.ps1 > fonts.txt

Add-Type -AssemblyName System.Drawing

$fonts = New-Object System.Drawing.Text.InstalledFontCollection
$fontFamilies = $fonts.Families | Sort-Object Name

Write-Host "Found $($fontFamilies.Count) font families installed on this system:`n"

foreach ($font in $fontFamilies) {
    Write-Host $font.Name
}
