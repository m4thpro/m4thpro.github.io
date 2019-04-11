# How to add another game

Look at `games.txt` which has URLs pointing to the `.p8` files.  Add
another URL to that file, and then run `build.sh` again to populate
the `games` directory.  You will need both PICO-8 and `wget`
installed.

# How to view the website locally

After having installed `ruby` and `bundler`, run
```
bundle install
bundle exec jekyll serve
```
