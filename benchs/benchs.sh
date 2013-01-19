#!/bin/bash

for x in `cat zones | grep -v ^#` ; do
time nik2img.py $1 -f png $2/$name.png -a none
done
