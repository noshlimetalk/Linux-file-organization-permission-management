#!/bin/bash

create_user() {
USERNAME=$1
DEPARTMENT=$2

if id "$USERNAME" &>/dev/null; then
echo "User $USERNAME already exists

else 
      useradd -m -g $DEPARTMENT -s /bin/bash $USERNAME
      echo "$USERNAME:Temppass12345678910 | chpasswd
      echo "User $USERNAME created and added to $DEPARTMENT"
      fi

      
