⍝ Unit circle animation
P5.size←2⌿300
t←0
g←P5.G
z←0 0
P5.draw←{g.bg ¯1
g.circle 3⌿90
g.ln a←90×1+z,2 1○t
g.rect a
g.ln 90×1+z,(÷2○t),z,z,⍨÷1○t
t+←.1}