⍝ replace random pixels with white ones

P5.size←16 8
P5.setup←{P5.G.bg 0⋄{P5.G.stroke←⍵⋄P5.G.pt ⍵ 0}¨16}