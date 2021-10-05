#!/bin/sh

#
# Transform image files pixel per pixel into cow files.
#

mkdir -p "../pokemons"

for FULLFILENAME in ./sprites/*.png
do
    FILENAME=$(basename "$FULLFILENAME")
    FILENAME="${FILENAME%.*}"
    img2xterm --cow "$FULLFILENAME" "../pokemons/$FILENAME.cow"
done
