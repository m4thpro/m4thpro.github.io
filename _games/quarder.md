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

> 57**0**9**13**46**8**2

There are other possibilities too: in the case of the permutation
5709134682, the foursome 0134 is also a substring in order.

Other times, you can find four in reverse, e.g., if the permutation were

> 5827491630

there are no length four substrings which are in order.  But note that

> **5**8**2**749**1**63**0**

so 5210 is a length four substring which is in *reverse* order.  In the case of 58274**9**1**630**, another such foursome is 9630.

# The goal

Pay attention to the top row, where the digits 0123456789 have been
shuffled.  Move the cursor right and left to choose a digit; press a
button to select the digit.  Your goal is to select four digits which
are in order, or in reverse order.

If the presented permutation were 5709134682, you could win by
clicking on 0, then 1, then 3, and finally 4.  At that point, you will
be presented with another puzzle.

# Is it always possible to win?

In any permutation of the digits 0123456789, you can *always* find at
least four digits which are in order or four digits which are in
reverse order.  You can prove this by invoking Dilworth's theorem.
