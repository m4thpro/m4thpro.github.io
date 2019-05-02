# How to add another game

Under `_games` you see some `.md` files.  Those Markdown have a YAML header which looks like
```yaml
layout: game
title:  "Topology"
pico8: topology
github: https://github.com/m4thpro/mathgames/blob/master/topology.p8
source: https://raw.githubusercontent.com/m4thpro/mathgames/master/topology.p8
```
To add more games, create additional files with `layout: game`.  Include `pico8:` with the short name of the game, along with links to Github and the raw source.  Then run `build.sh`, which relies on PICO-8 itself and `wget` to download the games and convert them to Javascript.

# How to view the website locally

After having installed `ruby` and `bundler`, run
```
bundle install
bundle exec jekyll serve
```
