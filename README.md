# 2u

A rendering project using OpenStreetMap data based on the work of Andy Allan¹ to convert the osm.org style to CartoCSS
¹ https://github.com/gravitystorm/openstreetmap-carto

2u stands for "Ugly and Usefull", unlike the "defaut osm.org" style made for about every uses, this one focuses on Openstreetmap contributors. Every thing approved 
on the wiki and significantly used is meant to be shown on this style, not matter how ugly, the goal is to show them. (Unless there are conflicts with other tags)

## Installation
* Read : https://github.com/gravitystorm/openstreetmap-carto/blob/master/README.md
* Install nodejs http://nodejs.org/
* Install carto https://github.com/mapbox/carto/blob/master/README.md (npm install -g carto + npm install -g millstone)
* Install mapnik
* nik2img is required for benchmarking and rendering

To customize your style you can use the cartoCC tool in /tools/cartocc.js script to add your database name, user and password
See ./tools/README.md

```
node ./tools/cartocc.js <path-to-project.mml> <path to your .json parametre file> > path-to-project_with_custom_db_credential.mml
```

To "compile" your style, you must install Node.js and carto
then run 
```
carto <your project.mml> > your_style.xml
```

This style is meant to work with a osm2pgsql schema with the default osm2pgsql style + the "--hstore" switch to import all tags that are not
allready colums into a hstore "tags" column

Check the https://github.com/osm-fr/osm2pgsql-import-tools/blob/master/default.style file to see what are tags available as columns and those accessible thru
the hstore(tags)->'tag'="value" syntax

## Live install

http://layers.openstreetmap.fr (layer 2u) shows you the last stable result of this style

More info here as well : http://wiki.openstreetmap.org/wiki/2u

## Quick launch

    make 2u.xml   // to simply compile the style and create a 2u.xml mapnik style file
    make bench    // to compile the style, and check it on various tiles
    make install  // to install it on layers.openstreetmap.fr
