#!/bin/sh

cd /home/scitech/shared-data/shapefile2geojson

hpccm --recipe recipe.hpccm --format singularity --singularity-version=3.5 > Singularity

sudo singularity build Shapefile2GeoJSON.sif Singularity

cp Shapefile2GeoJSON.sif /images

