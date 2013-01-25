#!/bin/bash

# stop at first error
set -e

function time_spent 
{
if [ $1 == "start" ] ; then
  start_time=`date +%s.%N`
  else
  {
    time=`date +%s.%N`
    echo $2,`echo "$time-$start_time" | bc -l`
  }
  fi
}
                
                
IFS=$'\n'
for x in `cat zones | grep -v ^#` ; do
  name=`echo $x | cut -f1 -d\;`
  bbox=`echo $x | cut -f2 -d\;`


  #I don't get why using $bbox does fail...
  bbox1=`echo $bbox | cut -f1 -d\ `
  bbox2=`echo $bbox | cut -f2 -d\ `
  bbox3=`echo $bbox | cut -f3 -d\ `
  bbox4=`echo $bbox | cut -f4 -d\ `

  time_spent start
  nik2img.py $1 $2/$name.png -d 1500 900 --srs 900913 --bbox $bbox1 $bbox2 $bbox3 $bbox4 -a none -f png
  time_spent stop $name
done
