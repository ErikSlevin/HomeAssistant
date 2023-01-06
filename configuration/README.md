# Konfigurations Übersicht
zuletzt automatisch aktualisiert: 06.01.2023 um 08:32 Uhr 

## Staubsauger

* `binary_sensor.staubsauger_heute_reinigung_notwendig`
  *  Heute noch nicht gereinigt
  * ```True```, wenn heute noch nicht gereinigt wurde (auch keine kurze Küchenreinigung)
</br></br>
* `binary_sensor.staubsauger_entleeren`
  *  Staubbehälter entleeren
  * ```True```, wenn 'Anzahl der Gesamtreinigungen' / '(Helfer) Nach Reinigungen leeren' = Rest 0
</br></br>
* `binary_sensor.staubsauger_zwangsreinigung`
  *  Zwangsreinigung
  * ```True```, wenn letzte Reinigung in Tagen zu lange zurück liegt
</br></br>
*  Custom Card
   * Anzeige der Karte im Lovelance UI
</br></br>
* `sensor.staubsauger_sensoren_reinigen`
  *  Sensoren reinigen
  * ```False```, wenn kein Sensor gereinigt werden muss. Gibt den jeweiligen Sensor als String zurück, wenn Reinigung notwenidg
</br></br>
* `sensor.staubsauger_entleeren_datum`
  *  Staubbehälter leeren (Datum)
  * Gibt das Datum zurück, wann der Behälter entleert werden muss,wenn wenn täglich gereinigt wird
</br></br>
* `sensor.staubsauger_naechste_geplante_reinigung`
  *  Nächste Reinigung (Datum)
  * Gibt das Datum zurück, wann die nächste Reinigung ansteht
</br></br>

## Klima

* `sensor.aussen_temperatur`
  *  Außen Temperatur
  * Temperatur von dem eingestellter Standort
</br></br>
* `sensor.aussen_humidity`
  *  Außen Luftfeuchtigkeit
  * Luftfeuchtigkeit von dem eingestellter Standort
</br></br>
* `sensor.wohnzimmer_soll_temperatur`
  *  Wohnzimmer Soll-Temperatur
  * Eingestellte Soll-Temperatur im Wohnzimmer
</br></br>
* `sensor.wohnzimmer_heizungen`
  *  Wohnzimmer Heizungslevel 
  * Heizungslevel Durchschnitt der zwei Heizungen
</br></br>

## Licht

*  TV Beleuchtung
   * Fasse die drei Lampen zu einer Gruppe zusammen
</br></br>
*  Lichtschalter
   * Manuell erstellter Lichtschalter für den Shelly
</br></br>
* `sensor.szenenauswahl`
  *  TV-Beleuchtung
  * Abhängig vom Sonnenstand wird eine Hue-Szene ausgewählt und in einer Automation automatisch gesetzt
</br></br>

## Allgemein

* `binary_sensor.anwesend`
  *  Anwesenheitserkennung
  * ```True```, wenn keiner Zuhause ist
</br></br>
* `sensor.3d_drucker`
  *  3D-Drucker
  * Anhand des gemessenden Energieverbrauches wird der Status wiedergegeben
</br></br>

## Ping

*  Fernseher
   * LG B9
</br></br>
*  NAS
   * Synology Diskstation DS214play
</br></br>

## Benachrichtigung

*  Gotify
   * Verbindung zum Self-Hosted Notification Dienst (Docker-Container)
</br></br>

## Datenbank

*  Mariadb
   * Verbindung zu einer Self-Hosted Datenbank (Docker-Container)
</br></br>
