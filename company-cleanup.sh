#!/bin/bash

BASE_DIR="/company"
ARCHIVE_DIR="/company/archive"
DAYS_OLD=30

# Creating the archive directory

mkdir -p $ARCHIVE_DIR

# Automatcally move files older than 30 days to the archive directory 

find $BASE_DIR -type f -mtime +$DAYS_OLD ! -path "$ARCHIVE_DIR/*" -exec mv {} $ARCHIVE_DIR/ \;

# Display clean up on user screen

echo "Cleanup completed on $(date)" >> /var/log/company-cleanup.log
