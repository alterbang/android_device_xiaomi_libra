#!/bin/bash

VENDOR=xiaomi
DEVICE=libra

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
#rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$ | sed -e 's#^/system/##g'`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    rm $BASE/$FILE
done
