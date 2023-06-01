# Definiere den Pfad zur Quelldatei
$sourceFile = "\\homeassistant\config\scripts.yaml"
# Definiere den Zielordner für die aufgespaltenen Dateien
$targetFolder = "$env:USERPROFILE\Desktop\Scripts"

# Überprüfe, ob der Zielordner existiert, und erstelle ihn gegebenenfalls
if (-not (Test-Path -Path $targetFolder)) {
    New-Item -ItemType Directory -Path $targetFolder | Out-Null
}

# Lese den Inhalt der Quelldatei
$fileContent = Get-Content $sourceFile -Raw

# Definiere das Muster für die Trennung der Scripts
$pattern = "(?sm)^\s*(\w+):\r?\n(.*?)(?=^\w+:|\z)"

# Suche nach Übereinstimmungen im Inhalt der Quelldatei
$matches = [regex]::Matches($fileContent, $pattern)

# Iteriere über die Übereinstimmungen und erstelle für jede eine separate Datei
foreach ($match in $matches) {
    $scriptName = $match.Groups[1].Value.Trim()
    $scriptContent = $match.Groups[2].Value -replace "(?m)^\s{2}"
    $scriptContent = $scriptContent -replace "(?m)^\s*$" -replace "(?m)^(?:\r?\n)+"
    $scriptContent = $scriptContent.TrimEnd()

    # Entferne ungültige Zeichen aus dem Skriptnamen
    $invalidChars = [System.IO.Path]::GetInvalidFileNameChars()
    $validScriptName = $scriptName -replace "[$([regex]::Escape($invalidChars -join ''))]", ""

    # Erstelle den Dateinamen aus dem validierten Skriptnamen
    $fileName = Join-Path -Path $targetFolder -ChildPath "$validScriptName.yaml"

    # Schreibe den Inhalt des Skripts in die separate Datei
    $scriptContent | Out-File -FilePath $fileName -Encoding UTF8

    Write-Host "Datei erstellt: $fileName"
}
