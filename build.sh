#!/bin/sh

DIR="$(dirname "$0")"
cd $DIR
mkdir -p .cache
mkdir -p .cache/carts

################################################################
echo "Downloading games..."

for f in $(grep -lr pico8: . | grep md$)
do
    for url in $(grep source: $f | head -n1 | sed 's/.*source://g')
    do
	wget -N $url -P .cache/carts	
    done
done

################################################################
echo "Converting games to javascript..."

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
echo "Installing javascript games..."

mkdir -p games

for game in .cache/carts/*.p8
do
    cp .cache/carts/$(basename $game .p8).js games/
done
