#!/usr/bin/env bash
for year in ~/dataset/*
do
    echo -ne `basename $year`"\t"
    gunzip -c ${year}/* | \
        awk '{ temp = substr($0, 88, 5) + 0;
	        q = substr($0, 93, 1);
            if (temp!=9999 && q ~ /[01459]/ && temp > max) max = temp }
            END { print max }'
done
