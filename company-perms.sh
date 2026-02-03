#!/bin/bash

# Departments to manage
DEPARTMENTS="engineering hr marketing"

# Base company directory 

BASE_DIR= "/company"

# Created department folders and set group ownerships and permissions

for dept in $DEPARTMENTS; do
    mkdir -p $BASE_DIR/$dept
    chown :$dept $BASE_DIR/$dept
    chmod 770 $BASE_DIR/$dept
    chmod g+s $BASE_DIR?$dept

    # Created shared folder with open permissions

    mkdir -p $BASE_DIR/shared
    chmod 777 $BASE_DIR/shared

    # Display action on user screen

    echo "Permissions updated on $(date)" >> /var/log/company-perms.log 
