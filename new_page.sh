#!/usr/bin/env bash

filename=$1
title=$2

date=`date`
entry="[$title](\"/$filename.md.html\") $date<br>"

sed -e "s/DATE/$date/g" -e "s/TITLE/$title/g" template > $filename.md.html
sed -i "/TOP/ a $entry" index.html
