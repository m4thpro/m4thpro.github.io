---
layout: game
title:  Quarder
pico8: quarder
github: https://github.com/kisonecat/quarder
source: https://github.com/kisonecat/quarder/main/quarder.p8
---

# Find substrings in (or out) or order

Shuffle the digits 0123456789.  You might get 

> 5709134682

Even though the digits have been shuffled, sometimes you can find four
digits that are in-order, e.g.,

> 57<u>0</u>9<u>13</u>46<u>8</u>2

There are other possibilities too: in the case of the permutation
5709134682, the foursome 0134 is also a substring in order.

Other times, you can find four in reverse, e.g., if the permutation were

> 5827491630

there are no length four substrings which are in order.  But note that

> <u>5</u>8<u>2</u>749<u>1</u>63<u>0</u>

so 5210 is a length four substring which is in *reverse* order.  In
the case of 58274<u>9</u>1<u>630</u>, another such foursome is 9630.

# The goal

Pay attention to the top row, where the digits 0123456789 have been
shuffled.  Move the cursor right and left to choose a digit; press a
button to select the digit.  Your goal is to select four digits which
are in order, or in reverse order.

If the presented permutation were 5709134682, you could win by
clicking on 0, then 1, then 3, and finally 4 since those are four
digits appearing *in order* within 5709134682.  At that point, you
will be presented with another puzzle.  You can also win by choosing
four digits in *reverse* order.

# Is it always possible to win?

In any permutation of the digits 0123456789, you can *always* find at
least four digits which are in order or four digits which are in
reverse order.  You can prove this by invoking Dilworth's theorem.
