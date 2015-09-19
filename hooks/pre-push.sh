#!/bin/bash

FILE="Rmarkdown-rautu.html"

CHANGE=$(git diff "HEAD@{1}" --name-only | grep $FILE)
 
if [[ "$CHANGE" = "$FILE" ]]; then
    echo
    echo Sending $FILE to specified server
    echo
    scp -P $PATAXOP $FILE fernandomayer@$PATAXO:~/public_html/useR
    echo
fi
