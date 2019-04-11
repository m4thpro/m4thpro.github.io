#!/bin/sh
DIR="$(dirname "$0")"
cd $DIR
mkdir -p .cache
mkdir -p .cache/carts

################################################################
echo "Downloading games..."

wget -i games.txt -P .cache/carts

################################################################
echo "Converting games to html..."

cd .cache/carts
rm -f commands.txt
echo "pico-8 cartridge // http://www.pico-8.com" >> commands.txt
echo "version 16" >> commands.txt
echo "__lua__" >> commands.txt
for game in *.p8
do
    echo "load('$game')" >> commands.txt
    echo "export('$(basename "$game" .p8).html')" >> commands.txt
done
pico8 -home .. -desktop .. -x commands.txt
cd ../..

################################################################
echo "Installing games..."

mkdir -p games

for game in .cache/carts/*.p8
do
    cp .cache/carts/$(basename $game .p8).html games/
    cp .cache/carts/$(basename $game .p8).js games/
done

################################################################
echo "Patching games..."

for game in $(grep -L webcontroller games/*.html)
do
    sed -i '/^<\/body><\/html>$/i \
<link rel="stylesheet" href="/webcontroller/webcontroller.css"> \
<script src="/webcontroller/webcontroller.js"></script>' $game
    sed -i '/<meta name="description" content="">/a \
<meta name="viewport" content="width=device-width, initial-scale=1.0">' $game
done
