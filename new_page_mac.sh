#!/usr/bin/env bash

filename=$1
title=$2

date=`date`
entry="[$title](\"/$filename.md.html\") $date<br>"

gsed -e "s/DATE/$date/g" -e "s/TITLE/$title/g" template > $filename.md.html
gsed -i "/TOP/ a $entry" index.html
