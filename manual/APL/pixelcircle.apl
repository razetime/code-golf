⍝ Single pixel moving in a circle
⍝ Basically a Processing port

G←P5.G
d←0
P5.draw←{G.bg¯1
d+←○÷1800
G.stroke←'800080'
G.pt 50+38×2 1○d}