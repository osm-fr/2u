# 2u

A rendering project using OpenStreetMap data based on the work of Andy Allan* to convert the osm.org style to CartoCSS
* https://github.com/gravitystorm/openstreetmap-carto

2u stands for "Ugly and Usefull", unlike the "defaut osm.org" style made for about every uses, this one focuses on Openstreetmap contributors. Every thing approved 
on the wiki and significantly used is meant to be shown on this style, not matter how ugly, the goal is to show them. (Unless there are conflicts with other tags)

# Installation
* Read : https://github.com/gravitystorm/openstreetmap-carto/blob/master/README.md

To customize your style you can use the cartoCC tool in /tools/cartocc.js script to add your database name, user and password
See ./tools/README.md

```
node ./tools/cartocc.js <path-to-project.mml> <path to your .json parametre file> > path-to-project_with_custom_db_credential.mml
```

To "compile" your style, you must install Node.js and carto
the run 
```
carto <your project.mml> > your_style.xml
```

# Live install

http://layers.openstreetmap.fr (layer 2u) shows you the last stable result of this style

More info here as well : http://wiki.openstreetmap.org/wiki/2u
