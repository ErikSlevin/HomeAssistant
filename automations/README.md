# Automations Übersicht
zuletzt automatisch aktualisiert: 01.02.2023 um 21:35 Uhr 


## Flurlicht ein-/ausschalten 
File: [Flurlicht_ein-_ausschalten.yaml](Flurlicht_ein-_ausschalten.yaml)
* Wenn Anwesend: Wenn Bewegung im Flur erkannt wurde (zwei Sensoren  - ODER Funktion) und die Sonne über den eingestellten Wert von dem Helfer `input_number.flur_licht_fruh`  (Früh) oder `input_number.flur_licht_abends` (Abends) ist - schalte das Flur Licht  ein.  Sobald für 15 Sekunden keine Bewegung mehr in Flur detektiert wurde (zwei Sensore  - UND Funktion) - schalte das Flur Licht wieder aus.


Verwendete Sensoren:
* [binary_sensor.anwesend](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-binary_sensor.yaml?plain=1#L23-L25)
* [binary_sensor.flur_bewegung_erkannt](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-binary_sensor.yaml?plain=1#L76-L78)
* [binary_sensor.flur_keine_bewegung_erkannt](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-binary_sensor.yaml?plain=1#L90-L92)
* [input_number.flur_licht_abends](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L94-L96)
* [input_number.flur_licht_fruh](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L104-L106)
* [sensor.sonnenaufgang](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-sensor.yaml?plain=1#L44-L46)


## 3D-Drucker
File: [3D-Drucker.yaml](3D-Drucker.yaml)
* Wenn der 3D-Drucker eingeschaltet ist: Warte, bis der gemessene Energieverbrauch  für 1 Minute unter 15 Watt liegt. Sobald dieser Wert erreicht wurde, sende eine  Push-Benachrichtigung via Gotify und schalte den 3D-Druckeraus.


## Küche
File: [Küche.yaml](Küche.yaml)
* Einfacher Tastendruck: Licht in der Küche wird An/Aus geschaltet.  Langer Tastendruck: Spotify Playlist wird abgespielt. Sollte hierbei der Fernseher  laufen, wird dieser auf Lautlos gestellt und der Bildschirm ausgeschaltet. Sobald  die Musik via Langer Langer Tastendruck wieder deaktiviert wird, wird der Fernseher  wieder auf die zuvor eingestellte Lautstärke gestellt und der Bildschirm eingeschaltet  Wenn bei aktiver Musikwiedergabe der TV eingeschaltet wird, wird die Muisk ausgeschaltet.


## Monatliches Backup
File: [Monatliches_Backup.yaml](Monatliches_Backup.yaml)
* Am 01. jeden Monats wird ein Voll-Backup erstellt und vorhandene alte  Backups  werden via Shell-Skript (`find /backup/* -mtime +14 -exec rm {} \;`)  gelöscht. Benachrichtigung erfolgt via Push-Benachrichtigung.


## Staubsaugen
File: [Staubsaugen.yaml](Staubsaugen.yaml)
* 15min Abwesenheit: Zwischen den eingestellten Zeiten (`input_datetime.staubsaugen_beginn`  und `input_datetime.staubsaugen_ende`)\n wird die Wohnung gereinigt. 
* Zwangsreinigung:  Eine Zwangsreinigung ist notwendig, wenn wenn nach eine bestimmte Anzahl an Tagen  nicht gereinigt wurde.
* Staubbehälter: Nach einer Anzahl von Reinigungen (`input_number.staubsauger_entleeren`)  wird eine Push-Benachrichtigung versendet, dass der Behälter entleert werden soll.  
* Sensoren: Wenn Sensoren gereinigt werden müssen, wird eine Push-Benachrichtigung  versendet und der Counter zurückgesetzt.
* Küche: Wenn der Küchen-Lichtschalter  2x schnell hintereinander gedrückt wird, wird die Küche entlang der Küchenschränke  (Zone) 2x gereinigt. Sollte die Reinigung zwischen 22:00 - 07:00 Uhr durchgeführt  werden, wird der Turbo-Modus deaktiviert und ein Leiser-Modus für diese Reinigung  ausgewählt.


Verwendete Sensoren:
* [binary_sensor.anwesend](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-binary_sensor.yaml?plain=1#L23-L25)
* [binary_sensor.staubsauger_entleeren](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-binary_sensor.yaml?plain=1#L46-L48)
* [binary_sensor.staubsauger_heute_reinigung_notwendig](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-binary_sensor.yaml?plain=1#L29-L31)
* [input_datetime.staubsaugen_beginn](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L139-L141)
* [input_datetime.staubsaugen_ende](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L147-L149)
* [input_number.staubsauger_entleeren](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L4-L6)
* [sensor.staubsauger_sensoren_reinigen](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-sensor.yaml?plain=1#L110-L112)


## TV Beleuchtung
File: [TV_Beleuchtung.yaml](TV_Beleuchtung.yaml)
* TV einschalten: wird eingeschaltet und die passende Szene(anhand von  einem Sensor) wird eingestellt. Der Übergang wird mithilfe eines Helfers eingestellt.  
* TV ausschalten: wird ausgeschaltet. Der Übergang wird mithilfe eines Helfers  eingestellt.
* Szenenwechsel: Wenn der TV eingeschaltet ist, wird bei einem Statuswechsels  des Sensors (anhand des Sonnenstandes), die passende Szene ausgewählt und aktiviert  bzw. die Beleuchtung ein- oder ausgeschaltet.


Verwendete Sensoren:
* [input_number.tv_ausschalten_transition](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L34-L36)
* [input_number.tv_einschalten_transition](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L24-L26)
* [input_number.tv_umschalten_transition](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L44-L46)
* [input_select.szenenauswahl](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L127-L129)
* [sensor.szenenauswahl](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-sensor.yaml?plain=1#L4-L6)


## Szenenwechsel
File: [Szenenwechsel.yaml](Szenenwechsel.yaml)
* Wenn der Sensor den Status ändert, wird dieser Wert in den Input-Helper  `input_select.szenenauswahl` geschrieben. Dies stellt die zentrale Automation  für die einheitliche Licht-Szenen-Steuerung für die Wohnung.


Verwendete Sensoren:
* [input_select.szenenauswahl](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L127-L129)
* [sensor.szenenauswahl](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-sensor.yaml?plain=1#L4-L6)


## Klima
File: [Klima.yaml](Klima.yaml)
* Abwesend: Bei einer Stunde Abwesenheit werden alle Heizungen in den  Eco-Modus versetzt (16 Grad).  Anwesenheit: Bei Anwesenheit wird der Eco-Modus wieder deaktiviert und die vor  eingestellten Heizprofile wieder aktiviert.


Verwendete Sensoren:
* [binary_sensor.anwesend](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-binary_sensor.yaml?plain=1#L23-L25)
* [input_number.wohungs_temperatur](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L114-L116)


## Alarm
File: [Alarm.yaml](Alarm.yaml)
* Sanft Wecken: Wenn sich die Alarmzeit ändert, wird automatisch der  Input-Helper für den Pre-Alarm aktualisiert (10min vorher)


Verwendete Sensoren:
* [binary_sensor.anwesend](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-binary_sensor.yaml?plain=1#L23-L25)
* [binary_sensor.flur_bewegung_erkannt](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-binary_sensor.yaml?plain=1#L76-L78)
* [input_datetime.alarm_time](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L155-L157)
* [input_datetime.pre_alarm](http://github.com/erikslevin/homeassistant/tree/main/configuration/00-custom-input_helpers.yaml?plain=1#L163-L165)


