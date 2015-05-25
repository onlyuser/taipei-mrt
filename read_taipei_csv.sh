#!/bin/bash

IN_CSV_FILE=taipei.csv
IN_DOT_FILE=taipei-mrt.dot
IN_DOT_FILE_CONTENTS="`cat $IN_DOT_FILE`"
OUT_DOT_FILE="`echo $IN_DOT_FILE | sed \"s/\(.*\)\.dot/\1_with_pos.dot/g\"`"

while read -r LINE; do
    ID=`echo $LINE | cut -d, -f1`
    LABEL=`echo $LINE | cut -d, -f2`
    LAT=`echo $LINE | cut -d, -f7`
    LONG=`echo $LINE | cut -d, -f8`
    echo "Processing.. $ID,$LABEL,$LAT,$LONG"
    IN_DOT_FILE_CONTENTS="`echo -e \"$IN_DOT_FILE_CONTENTS\" | sed \"s#\(label=\\"$LABEL\\"\), pos=\\".*\\"#\1#g\"`"
    IN_DOT_FILE_CONTENTS="`echo -e \"$IN_DOT_FILE_CONTENTS\" | sed \"s#\(label=\\"$LABEL\\"\)#\1, pos=\\"$LONG,$LAT\\"#g\"`"
done < $IN_CSV_FILE
echo -e "$IN_DOT_FILE_CONTENTS" > $OUT_DOT_FILE

echo "$OUT_DOT_FILE has been written."
