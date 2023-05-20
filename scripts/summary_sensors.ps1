# Pfad zur Konfigurationsdatei
$path = "\\10.0.0.59\config\"

# Array für Einträge erstellen
$entries = @()

# Alle YAML-Dateien im angegebenen Pfad abrufen
$files = Get-ChildItem -Path $path -Filter "*.yaml"

# Für jede Datei den Inhalt einlesen und Einträge extrahieren
foreach ($file in $files) {
    # Dateiinhalt abrufen
    $content = Get-Content $file.FullName

    # Ein leeres Objekt für den Eintrag erstellen
    $entry = [PSCustomObject]@{
        Kategorie = ""
        Name = ""
        Beschreibung = ""
        LetzteAnpassung = ""
    }

    # Den Inhalt der Datei zeilenweise durchgehen
    foreach ($line in $content) {
        # Musterübereinstimmungen suchen und entsprechende Eigenschaften setzen
        if ($line -match "# Kategorie: (.+)") {
            $entry.Kategorie = $Matches[1]
        }
        elseif ($line -match "# Name: (.+)") {
            $entry.Name = $Matches[1]
        }
        elseif ($line -match "# Beschreibung: (.+)") {
            $entry.Beschreibung = $Matches[1]
        }
        elseif ($line -match "# Letzte Anpassung: (.+)") {
            $entry.LetzteAnpassung = $Matches[1]

            # Fertigen Eintrag dem Array hinzufügen
            $entries += $entry

            # Neues leeres Objekt für den nächsten Eintrag erstellen
            $entry = [PSCustomObject]@{
                Kategorie = ""
                Name = ""
                Beschreibung = ""
                LetzteAnpassung = ""
            }
        }
    }
}

# Einträge nach Kategorie und Name sortieren
$sortedEntries = $entries | Sort-Object Kategorie, Name

# Sortierte Einträge ausgeben
$sortedEntries
