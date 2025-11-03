#!/bin/bash
# print top 3 files which have biggest size (exclude Applications, Movies, Pictures, Music, Postman, Public, Library, Desktop)
# This is first version of the file 
find . -type f -not -path "./Library/*" -not -path "./Pictures/*" -not -path "./go/*" -not -path "./.cursor/*" -exec ls -Sl {} \; 2>/dev/null| awk '{for(i=9;i<=NF; i++){ s = s " " $i; }printf("%d --> %s\n", $5, s); s = "";}' | sort -nr | head -3
