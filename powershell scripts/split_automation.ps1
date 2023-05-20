# Definiere den Pfad zur Quelldatei
$sourceFile = "\\10.0.0.59\config\automations.yaml"
# Definiere den Zielordner für die aufgespaltenen Dateien
$targetFolder = "$env:USERPROFILE\Desktop\Automationen"

# Überprüfe, ob der Zielordner existiert, und erstelle ihn gegebenenfalls
if (-not (Test-Path -Path $targetFolder)) {
    New-Item -ItemType Directory -Path $targetFolder | Out-Null
}

# Lese den Inhalt der Quelldatei
$fileContent = Get-Content $sourceFile -Raw

# Definiere das Muster für die Trennung der Automationen
$pattern = "(?sm)-\s+id:\s+'(\d{13,16})'.*?(?=-\s+id: '\d{13,16}'|\z)"

# Suche nach Übereinstimmungen im Inhalt der Quelldatei
$matches = [regex]::Matches($fileContent, $pattern)

# Iteriere über die Übereinstimmungen und erstelle für jede eine separate Datei
foreach ($match in $matches) {
    $automationId = $match.Groups[1].Value

    # Suche nach dem Alias-Namen für die aktuelle Automation
    $aliasPattern = "- id: '$automationId'\r?\n\s+alias: '?(.*?)'?\r?\n"
    $aliasMatch = [regex]::Match($match.Value, $aliasPattern)
    if ($aliasMatch.Success) {
        $alias = $aliasMatch.Groups[1].Value.Trim()
    } else {
        $alias = "unknown"  # Wenn kein Alias gefunden wird, verwende "unknown" als Standardwert
    }

    # Entferne ungültige Zeichen aus dem Alias
    $invalidChars = [System.IO.Path]::GetInvalidFileNameChars()
    $validAlias = $alias -replace "[$([regex]::Escape($invalidChars -join ''))]", ""

    # Erstelle den Dateinamen aus dem validierten Alias
    $fileName = Join-Path -Path $targetFolder -ChildPath "$validAlias.yaml"

    # Extrahiere die Inhalte der aktuellen Automation (ohne die erste Zeile)
    $automationContent = $match.Value -split '\r?\n' | Select-Object -Skip 1

    # Entferne die ersten beiden Zeichen jeder Zeile
    $modifiedContent = foreach ($line in $automationContent) {
        if ($line.Length -ge 2) {
            $line.Substring(2)
        } else {
            $line
        }
    }

    # Schreibe den modifizierten Inhalt der Automation in die separate Datei
    $modifiedContent | Out-File -FilePath $fileName -Encoding UTF8

    Write-Host "Datei erstellt: $fileName"
}
