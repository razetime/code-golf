⍝ Displays a grid of colors on screen.

G←P5.G
z←'00'
f←'ff'
P5.draw←{G.stroke←z,z,f
G.pt 3 3
G.stroke←z,f,f
G.pt 2 3 3 2
G.stroke←f,z,f
G.pt 1 3 3 1
G.stroke←z,f,z
G.pt 2 2
G.stroke←f,f,z
G.pt 1 2 2 1
G.stroke←f,z,z
G.pt 1 1}