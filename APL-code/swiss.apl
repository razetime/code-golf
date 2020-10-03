P5.size←2⌿32
g←P5.G
a←13 6 19 26
P5.draw←{r←g.rect
g.bg'f00'
g.stroke←⍬
r a
r 2⌽⌽a}
