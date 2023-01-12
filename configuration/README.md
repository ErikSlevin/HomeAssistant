# Konfigurations Übersicht
zuletzt automatisch aktualisiert: 12.01.2023 um 08:57 Uhr 

## Input_Number

* `input_number.staubsauger_entleeren`
  *  Staubsauger entleeren
  * Nach wievielen Reinigungen soll der Staubbehälter geleert werden.
</br>
* `input_number.nach_tagen_reinigen`
  *  Staubsauger entleeren
  * Nach wievielen Reinigungen soll der Staubbehälter geleert werden.
</br>
* `input_number.tv_einschalten_transition`
  *  TV-Licht Einschalten Transition
  * Länge der Transition beim Einschalten in Sekunden, bis 100% erreicht wurde.
</br>
* `input_number.tv_ausschalten_transition`
  *  TV-Licht Auschalten Transition
  * Länge der Transition beim Ausschalten in Sekunden, bis 0% erreicht wurde.
</br>
* `input_number.tv_umschalten_transition`
  *  TV-Licht Change Transition
  * Länge der Transition bei einem Szenen-Wechsel in Sekunden.
</br>
* `input_number.tv_licht_aus`
  *  TV-Licht Ausschalten
  * Bei welchem Sonnenstand soll das TV-Licht ausgeschaltet werden.
</br>
* `input_number.tv_licht_ubergang`
  *  TV-Licht Change Transition
  * Bei welchem Sonnenstand soll das TV-Licht ausgeschaltet werden.
</br>
* `input_number.flur_licht_abends`
  *  Flur Licht Abends
  * Bei welchem Sonnenstand soll das Flur-Licht eingeschaltet werden.
</br>
* `input_number.flur_licht_fruh`
  *  Flur Licht Früh
  * Bei welchem Sonnenstand soll das Flur-Licht ausgeschaltet werden.
</br>
* `input_number.wohungs_temperatur`
  *  Wohnungs Temperatur
  * Welche Temperatur muss unterschritten werden, damit bei Abwesenheit geheizt wird

## Staubsauger

* `binary_sensor.staubsauger_heute_reinigung_notwendig`
  *  Heute noch nicht gereinigt
  * ```True```, wenn heute noch nicht gereinigt wurde (auch keine kurze Küchenreinigung)
</br>
* `binary_sensor.staubsauger_entleeren`
  *  Staubbehälter entleeren
  * ```True```, wenn 'Anzahl der Gesamtreinigungen' / '(Helfer) Nach Reinigungen leeren' = Rest 0
</br>
* `binary_sensor.staubsauger_zwangsreinigung`
  *  Zwangsreinigung
  * ```True```, wenn letzte Reinigung in Tagen zu lange zurück liegt
</br>
*  Custom Card
   * Anzeige der Karte im Lovelance UI
</br>
* `sensor.staubsauger_sensoren_reinigen`
  *  Sensoren reinigen
  * ```False```, wenn kein Sensor gereinigt werden muss. Gibt den jeweiligen Sensor als String zurück, wenn Reinigung notwenidg
</br>
* `sensor.staubsauger_entleeren_datum`
  *  Staubbehälter leeren (Datum)
  * Gibt das Datum zurück, wann der Behälter entleert werden muss,wenn wenn täglich gereinigt wird
</br>
* `sensor.staubsauger_naechste_geplante_reinigung`
  *  Nächste Reinigung (Datum)
  * Gibt das Datum zurück, wann die nächste Reinigung ansteht

## Klima

* `sensor.aussen_temperatur`
  *  Außen Temperatur
  * Temperatur von dem eingestellter Standort
</br>
* `sensor.aussen_humidity`
  *  Außen Luftfeuchtigkeit
  * Luftfeuchtigkeit von dem eingestellter Standort
</br>
* `sensor.wohnzimmer_soll_temperatur`
  *  Wohnzimmer Soll-Temperatur
  * Eingestellte Soll-Temperatur im Wohnzimmer
</br>
* `sensor.wohnzimmer_heizungen`
  *  Wohnzimmer Heizungslevel 
  * Heizungslevel Durchschnitt der zwei Heizungen
</br>
* `sensor.buero_soll_temperatur`
  *  Büro Soll-Temperatur
  * Eingestellte Soll-Temperatur im Büro

## Allgemein

* `binary_sensor.anwesend`
  *  Anwesenheitserkennung
  * ```True```, wenn keiner Zuhause ist
</br>
* `sensor.3d_drucker`
  *  3D-Drucker
  * Anhand des gemessenden Energieverbrauches wird der Status wiedergegeben
</br>
* `sensor.sonnenaufgang`
  *  Sonnen Auf/Untergang
  * Gibt entweder Sonnenaufgang oder Sonnenuntergang aus

## Licht

*  TV Beleuchtung
   * Fasse die drei Lampen zu einer Gruppe zusammen
</br>
*  Lichtschalter
   * Manuell erstellter Lichtschalter für den Shelly
</br>
* `sensor.szenenauswahl`
  *  TV-Beleuchtung
  * Abhängig vom Sonnenstand wird eine Hue-Szene ausgewählt und in einer Automation automatisch gesetzt

## Input_Datetime

* `input_datetime.staubsaugen_beginn`
  *  Staubsaugen Beginn
  * Ab welcher Uhrzeit soll gereinigt werden.
</br>
* `input_datetime.staubsaugen_ende`
  *  Staubsaugen Ende
  * Bis zu welcher Uhrzeit darf gereinigt werden.

## Ping

*  Fernseher
   * LG B9
</br>
*  NAS
   * Synology Diskstation DS214play

## Benachrichtigung

*  Gotify
   * Verbindung zum Self-Hosted Notification Dienst (Docker-Container)

## Datenbank

*  Mariadb
   * Verbindung zu einer Self-Hosted Datenbank (Docker-Container)

## Input_Select

* `input_select.szenenauswahl`
  *  Szenenauswahl
  * Einheitliche Szenenauswahl für alle Phillips Hue Lampen
