# manifesto

- we find joy in doing mathematics 
- we seek to share this joy
- by helping others learn to know mathematics
- to play with mathematics
- by helping people interact directly with mathematics.
- each game should allow someone to interact with mathematics, 
- challenge them
- each game should teach the user about math, and not simply use math as something to overcome. 
- mathematics solves problems---it doen't create them.

<hr/>

# Play Games

<div class="thumbnails">
  {% for game in site.games %}
  <div class="thumb">
    <a href="{{ game.url }}"><img src="/games/{{ game.pico8 }}.p8.png"/></a>
  </div>
  {% endfor %}
</div>

<hr/>

# Make your own games

let's see some pico8 code

```lua
function _init()
-- initialize code
-- called once on program startup
end

function _update()
-- changes behavor based on pressing buttons
-- called once per update at 30fps
end

function _draw()
-- draws stuff to the screen
-- called once per visible frame
end
```
