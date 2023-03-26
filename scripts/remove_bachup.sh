#!/bin/bash

# crontab -e
# 15 0 1 * *      /root/scripts/rename_backup.sh

# Setze Pfad zur Backup-Datei
BACKUP_DIR="/root/backup"
BACKUP_FILE_EXTENSION=".tar"

# Setze Präfix für den neuen Dateinamen
NEW_FILENAME_PREFIX=$(date +"%Y-%m-")"Homeassistant"

# Hole den Namen der Backup-Datei aus dem Backup-Ordner
BACKUP_FILE=$(ls $BACKUP_DIR | grep $BACKUP_FILE_EXTENSION)

# Falls eine Datei gefunden wurde, benenne sie um und protokolliere die Umbenennung
if [ -n "$BACKUP_FILE" ]; then
  OLD_FILENAME="$BACKUP_DIR/$BACKUP_FILE"
  NEW_FILENAME="$BACKUP_DIR/$NEW_FILENAME_PREFIX$BACKUP_FILE_EXTENSION"
  mv $OLD_FILENAME $NEW_FILENAME

  # Schreibe den Zeitstempel und die alte sowie neue Dateinamen in das Logfile
  TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
  echo "$TIMESTAMP - $OLD_FILENAME >> $NEW_FILENAME" >> /root/scripts/rename_backup.log
fi