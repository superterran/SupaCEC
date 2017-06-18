#!/bin/bash

CURR='.current'
LAST='.last'

if [ -f $CURR ]; then
   mv $CURR $LAST
fi

ls -l /dev/input/ > $CURR 

CURSIZE=$(/usr/bin/stat -c%s $PWD/$CURR) 
LASTSIZE=$(/usr/bin/stat -c%s $PWD/$LAST) 

if (( CURSIZE > LASTSIZE )); then
    $(echo "as" | cec-client -s)
fi
