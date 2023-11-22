#!/usr/bin/env bash

cat $1 > tmp0
cat $2 >> tmp0

awk -F "=" '!a[$1]++' tmp0 > tmp1 && mv tmp1 merged.env && rm tmp0