#!/usr/bin/env bash

filename=$1
title=$2

date=`date -R`
lastBuildDate="<lastBuildDate>$date<\/lastBuildDate>"

cat > /tmp/itemfile << EOF
        <item>
            <title>$title</title>
            <link>/$filename.md.html</link>
            <pubDate>$date</pubDate>
        </item>

EOF

sed -i -e "/NEWITEM/ r /tmp/itemfile" -e "s/<lastBuildDate>.*/$lastBuildDate/g" rss.xml
