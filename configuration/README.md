# Konfigurations Übersicht
zuletzt automatisch aktualisiert: 21.01.2023 um 08:58 Uhr 

## Input_Number

* `input_number.staubsauger_entleeren`
  *  Staubsauger entleeren
  * Nach wievielen Reinigungen soll der Staubbehälter geleert werden.
</br></br>
* `input_number.nach_tagen_reinigen`
  *  Staubsauger entleeren
  * Nach wievielen Reinigungen soll der Staubbehälter geleert werden.
</br></br>
* `input_number.tv_einschalten_transition`
  *  TV-Licht Einschalten Transition
  * Länge der Transition beim Einschalten in Sekunden, bis 100% erreicht wurde.
</br></br>
* `input_number.tv_ausschalten_transition`
  *  TV-Licht Auschalten Transition
  * Länge der Transition beim Ausschalten in Sekunden, bis 0% erreicht wurde.
</br></br>
* `input_number.tv_umschalten_transition`
  *  TV-Licht Change Transition
  * Länge der Transition bei einem Szenen-Wechsel in Sekunden.
</br></br>
* `input_number.tv_licht_aus_zu_hell_abend`
  *  TV-Licht Aus zu Hell (Abend)
  * Bei welchem Sonnenstand soll das TV-Licht Abends in die Szene Hell versetzt werden.
</br></br>
* `input_number.tv_licht_hell_zu_farbig_abend`
  *  TV-Licht Hell zu Farbig (Abend)
  * Bei welchem Sonnenstand soll das TV-Licht Abends in die farbige Szene versetzt werden.
</br></br>
* `input_number.tv_licht_farbig_zu_hell_frueh`
  *  TV-Licht Farbig zu Hell (Früh)
  * Bei welchem Sonnenstand soll das TV-Licht Früh in die Szene Hell versetzt werden.
</br></br>
* `input_number.tv_licht_hell_zu_aus_frueh`
  *  TV-Licht Hell zu Aus (Früh)
  * Bei welchem Sonnenstand soll das TV-Licht Früh ausgeschaltet werden.
</br></br>
* `input_number.flur_licht_abends`
  *  Flur Licht Abends
  * Bei welchem Sonnenstand soll das Flur-Licht eingeschaltet werden.
</br></br>
* `input_number.flur_licht_fruh`
  *  Flur Licht Früh
  * Bei welchem Sonnenstand soll das Flur-Licht ausgeschaltet werden.
</br></br>
* `input_number.wohungs_temperatur`
  *  Wohnungs Temperatur
  * Welche Temperatur muss unterschritten werden, damit bei Abwesenheit geheizt wird

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
* `sensor.buero_soll_temperatur`
  *  Büro Soll-Temperatur
  * Eingestellte Soll-Temperatur im Büro

## Allgemein

* `binary_sensor.anwesend`
  *  Anwesenheitserkennung
  * ```True```, wenn keiner Zuhause ist
</br></br>
* `sensor.3d_drucker`
  *  3D-Drucker
  * Anhand des gemessenden Energieverbrauches wird der Status wiedergegeben
</br></br>
* `sensor.sonnenaufgang`
  *  Sonnen Auf/Untergang
  * Gibt entweder Sonnenaufgang oder Sonnenuntergang aus
</br></br>
* `sensor.sonnenstand`
  *  Sonnenstand
  * Gibt die Elevation der Sonne in Grad aus

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

## Input_Datetime

* `input_datetime.staubsaugen_beginn`
  *  Staubsaugen Beginn
  * Ab welcher Uhrzeit soll gereinigt werden.
</br></br>
* `input_datetime.staubsaugen_ende`
  *  Staubsaugen Ende
  * Bis zu welcher Uhrzeit darf gereinigt werden.

## Ping

*  Fernseher
   * LG B9
</br></br>
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
