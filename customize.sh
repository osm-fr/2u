#!/bin/bash
if [ "a$6" == "a" ]; then
 echo "usage : ./customize.sh <file.mml> <database host> <database name> <database user> <database password> <shp_path>"
 echo "example : ./customize.sh project.mml osm2pgsql /data/world_boundaries"
 echo "(shp_path must be absolute)"
exit
fi
escaped_path=`echo $6|sed s/"\/"/"\\\\\\\\\/"/g`
cat $1 | sed s/"##DB_HOST##"/"$2"/g | sed s/"##DB_NAME##"/"$3"/g | sed s/"##SHP_PATH##"/"$escaped_path"/g | sed s/"##DB_USER##"/"$4"/g | sed s/"##DB_PASSWORD##"/"$5"/g
