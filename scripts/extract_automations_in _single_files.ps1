# Setze den Pfad zur Ursprungsdatei und das Ausgabeverzeichnis
# Home Assistant Add-on benötigt: Samba share
$filePath = "\\IP-Addresse-Homeassistant\config\automations.yaml"
$outputFolder = "$env:USERPROFILE\Downloads\Automations"

# Prüfe, ob das Ausgabeverzeichnis vorhanden ist, wenn nicht erstelle es
if (-not (Test-Path $outputFolder)) {
    New-Item -ItemType Directory -Path $outputFolder | Out-Null
}

# Lese den Inhalt der Ursprungsdatei
$fileContent = Get-Content $filePath -Raw

# Definiere das Regex-Pattern, um die einzelnen Automations-Blöcke zu extrahieren
$automationRegex = "(?s)- id: '\d{13}'.+?(?=\n- id: '\d{13}'|\z)"
$matches = [regex]::Matches($fileContent, $automationRegex)

# Gehe durch jeden gefundenen Automations-Block und erstelle eine separate Datei
foreach ($match in $matches) {

    # Extrahiere den Alias und setze den Dateinamen
    $fileName = ($match.Value | Select-String -Pattern 'alias: (\S+)').Matches.Groups[1].Value + ".yaml"

    # Setze den Pfad zur Ausgabedatei
    $outputPath = Join-Path $outputFolder $fileName

    # Extrahiere den Inhalt des Automations-Blocks und entferne die ersten beiden Zeichen jeder Zeile
    $automationContent = ($match.Value -split "`n") | Select-Object -Skip 1 | ForEach-Object {
        # Prüfe, ob die Zeile leer ist, falls ja gib sie unverändert zurück, ansonsten entferne die ersten beiden Zeichen
        if ($_.Length -lt 2) {
            $_
        } else {
            $_.Substring(2)
        }
    } | Out-String
    
    # Schreibe den Inhalt in die Ausgabedatei
    Set-Content -Path $outputPath -Value $automationContent
}
