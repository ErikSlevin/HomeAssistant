function Get-ConfigurationEntries {
    param (
        [ValidateSet("Kurz", "Ausführlich")]
        [string]$AusgabeModus = "Kurz"
    )

    # Pfad zur Konfigurationsdatei
    $path = "\\homeassistant\config\"

    # Array für Einträge erstellen
    $entries = @()

    # Alle YAML-Dateien im angegebenen Pfad abrufen
    $files = Get-ChildItem -Path $path -Filter "*.yaml"

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

        foreach ($line in $content) {
            # Musterübereinstimmungen suchen und entsprechende Eigenschaften setzen
            if ($line -match "# (Kategorie|Name|Beschreibung|Letzte Anpassung): (.+)") {
                $propertyName = $Matches[1]
                $propertyValue = $Matches[2]
                $propertyName = $propertyName -replace " ", "" # Entferne Leerzeichen im Eigenschaftsnamen
                $entry.$propertyName = $propertyValue

                if ($propertyName -eq "LetzteAnpassung") {
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
    }

    # Einträge nach Kategorie und Name sortieren
    $sortedEntries = $entries | Sort-Object Kategorie, Name

    if ($AusgabeModus -eq "Ausführlich") {
        # Ausführliche Ausgabe
        $sortedEntries
    }
    else {
        # Kurze Ausgabe
        $categoryEntries = $sortedEntries | Group-Object -Property Kategorie | ForEach-Object {
            [PSCustomObject]@{
                Kategorie = $_.Name
                Sensoren = ($_.Group | Measure-Object | Select-Object -ExpandProperty Count)
            }
        }

        $categoryEntries
    }
}

Get-ConfigurationEntries -AusgabeModus "Kurz"
# Get-ConfigurationEntries -AusgabeModus "Ausführlich"
