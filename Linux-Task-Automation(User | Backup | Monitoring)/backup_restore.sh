#!/bin/bash

# Script: backup_restore.sh
# Purpose: Backup and restore files

BACKUP_DIR="/home/ec2-user/backups"
SOURCE_DIR="/home/ec2-user/data"

mkdir -p $BACKUP_DIR
mkdir -p $SOURCE_DIR

echo "Choose option: (1) Backup  (2) Restore"
read choice

if [ "$choice" -eq 1 ]; then
    tar -czf $BACKUP_DIR/data_backup_$(date +%F).tar.gz $SOURCE_DIR
    echo "Backup completed! Saved in $BACKUP_DIR"
elif [ "$choice" -eq 2 ]; then
    ls -lh $BACKUP_DIR
    echo "Enter backup file name to restore:"
    read backup_file
    tar -xzf $BACKUP_DIR/$backup_file -C /
    echo "Restore completed!"
else
    echo "Invalid option."
fi
