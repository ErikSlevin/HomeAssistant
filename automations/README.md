# Automations Übersicht
zuletzt automatisch aktualisiert: 07.01.2023 um 19:23 Uhr 


## Flurlicht ein-/ausschalten 
File: [Flurlicht_ein-_ausschalten.yaml](Flurlicht_ein-_ausschalten.yaml)
* Wenn jemand Zuhause ist: Wenn Bewegung im Flur erkannt wurde und die  Sonne 3° über dem Horizont ist - schalte das Flur Licht ein.  Sobald für 15 Sekunden keine Bewegung mehr in Flur detektiert wurde - schalte  das Flur Licht wieder aus.


## 3D-Drucker
File: [3D-Drucker.yaml](3D-Drucker.yaml)
* Wenn der 3D-Drucker eingeschaltet ist: Warte, bis der gemessene Energieverbrauch  für 1 Minute unter 15 Watt liegt. Sobald dieser Wert erreicht wurde, sende eine  Push-Benachrichtigung via Gotify und schalte den 3D-Druckeraus.


## Küche
File: [Küche.yaml](Küche.yaml)
* Einfacher Tastendruck: Licht in der Küche wird An/Aus geschaltet.  Langer Tastendruck: Spotify Playlist wird abgespielt.


## Monatliches Backup
File: [Monatliches_Backup.yaml](Monatliches_Backup.yaml)
* Am 01. jeden Monats wird ein Voll-Backup erstellt und vorhandene alte  Backups werden gelöscht. Benachrichtigung erfolgt via Push-Benachrichtigung.


## Staubsaugen
File: [Staubsaugen.yaml](Staubsaugen.yaml)
* 15min Abwesenheit: Zwischen festgelegten Zeiten via Helfer wird die  Wohnung gereinigt. 
* Zwangsreinigung: Abfrage erfolgt täglich, ob eine Zwangsreinigung  durchgeführt werden soll. Eine Zwangsreinigung findet statt, wenn eine bestimmte  Anzahl an Tagen nicht gereinigt wurde. 
* Staubbehälter: Nach einer Anzahl von  Reinigungen wird eine Push-Benachrichtigung versendet, dass der Behälter entleert  werden soll. 
* Sensoren: Wenn Sensoren gereinigt werden müssen, wird eine Push-Benachrichtigung  versendet und der Counter zurückgesetzt.


## TV Beleuchtung
File: [TV_Beleuchtung.yaml](TV_Beleuchtung.yaml)
* TV einschalten: wird eingeschaltet und die passende Szene(anhand von  einem Sensor) wird eingestellt. Der Übergang wird mithilfe eines Helfers eingestellt.  
* TV ausschalten: wird ausgeschaltet. Der Übergang wird mithilfe eines Helfers  eingestellt.
* Szenenwechsel: Wenn der TV eingeschaltet ist, wird bei einem Statuswechsels  des Sensors (anhand des Sonnenstandes), die passende Szene ausgewählt und aktiviert  bzw. die Beleuchtung ein- oder ausgeschaltet.


## Szenenwechsel
File: [Szenenwechsel.yaml](Szenenwechsel.yaml)
* Wenn der Sensor den Status ändert, wird dieser Wert in den `input_select.szenenauswahl`  geschrieben. Zentrale Automation für die einheitliche Licht-Szenen-Steuerung in  der Wohnung.


## Küche Staubsaugen
File: [Küche_Staubsaugen.yaml](Küche_Staubsaugen.yaml)
* Doppelter Tastendruck: Die Zone ''Küchenzeile'' wird durch den Staubsauger  Gereinigt.


