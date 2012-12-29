# 2u

A rendering project using OpenStreetMap data based on the work of Andy Allan* to convert the osm.org style to CartoCSS
*[https://github.com/gravitystorm/openstreetmap-carto]

2u stands for "Ugly and Usefull", unlike the "defaut osm.org" style made for about every uses, this one focuses on Openstreetmap contributors. Every thing approved 
on the wiki and significantly used is meant to be shown on this style, not matter how ugly, the goal is to show them. (Unless there are conflicts with other tags)

# Installation
Read : https://github.com/gravitystorm/openstreetmap-carto/blob/master/README.md

To customize your style you can use the customize.sh script to replace shapefiles path, database name, user and password

  ./customize.sh <your project.mml> <database host> <database name> <database user> <database password> <shp_path>

To "compile" your style, you must install Node.js and carto
the run 
  carto <your project.mml> > your_style.xml

# Live install

http://layers.openstreetmap.fr (layer 2u) shows you the last stable result of this style