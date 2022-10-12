⍝ APL script to draw a regular polygon given radius and length of side
⍝ https://codegolf.stackexchange.com/questions/25885/draw-a-regular-polygon
r←200
s←7
P5.size←2⍴3×r

⍝ Older function:
⍝ p←(2×○⍳s+1)÷s
⍝ P5.draw←{P5.G.ln r+r×⍉(2○p)↑⍤⍮(1○p)}

⍝ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ ⎕ 

⍝ New function from dzaima:
P5.draw←{P5.G.ln ↑r+r×2 1○ᑈs÷⍨2×○0…s}

