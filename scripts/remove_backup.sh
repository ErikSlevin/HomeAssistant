#!/bin/bash

# crontab -e
# 30 23 28 * *    /root/scripts/remove_backup.sh

LOGFILE="/root/scripts/remove_backup.log"
COUNT=0

# Suchen Sie alle Dateien im /root/backup-Ordner und speichern Sie sie in der Variable DELETED_FILES
DELETED_FILES=$(ls /root/backup/)

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
echo "BEGINN $TIMESTAMP" >> $LOGFILE

# Löschen Sie alle Dateien im /root/backup-Ordner und protokollieren Sie sie
for FILE in $DELETED_FILES
do
  if [ $? -eq 0 ]; then
    COUNT=$((COUNT+1))
    SIZE=$(du -sh /root/backup/$FILE | awk '{print $1}')
    echo "   |   $FILE ($SIZE)" >> $LOGFILE
  fi
  rm -f /root/backup/$FILE
done

# Überprüfen Sie, ob der Löschvorgang erfolgreich war
if [ $COUNT -gt 0 ]; then
  TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
  echo "   |   $COUNT Dateien gelöscht." >> $LOGFILE
  echo "ENDE   $TIMESTAMP" >> $LOGFILE
  echo "" >> $LOGFILE

else
  TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
  echo "   |   Keine Backup-Dateien zum Löschen gefunden." >> $LOGFILE
  echo "ENDE   $TIMESTAMP" >> $LOGFILE
  echo "" >> $LOGFILE
fi