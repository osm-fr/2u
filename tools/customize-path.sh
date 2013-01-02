#!/bin/bash
if [ "a$1" == "a" ]; then
 echo "usage : cat file.mml | ./customize.sh <shp_path> > new_file.mml"
 echo "(shp_path must be absolute)"
exit
fi
escaped_path=`echo $1|sed s/"\/"/"\\\\\\\\\/"/g`
sed s/"##SHP_PATH##"/"$escaped_path"/g
