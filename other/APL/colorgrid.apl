⍝ Displays a grid of colors on screen.

G←P5.G
P5.draw←{p←G.pt
G.stroke←'00f'
p 3 3
G.stroke←'0ff'
p 2 3 3 2
G.stroke←'f0f'
p 1 3 3 1
G.stroke←'0f0'
p 2 2
G.stroke←'ff0'
p 1 2 2 1
G.stroke←'f00'
p 1 1}