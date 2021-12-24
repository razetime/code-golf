⍝ extend a line
⎕IO←0
i←P5.image 'https://i.stack.imgur.com/UdoWr.png'

⍝ P5.size← i.width i.height
⍝ f←{m←÷/(⊃∘⌽-⊃)p←⍸¯1≠⍵.mat⋄y x←⊃p⋄P5.G.ln⎕←0(y+m×-x)w(y+m×(w←⍵.width)-x)}

⍝ │0 83│100 ¯1417│
⍝ P5.setup←{
⍝ 	0 0 P5.G.img i
⍝ 	f i
⍝ 	m←÷/⎕←(⊃∘⌽-⊃)p←⍸×¯1×1+i.mat
⍝ 	x1←⊃⌽⊃p
⍝ 	y1←⊃⊃p
⍝ 	P5.G.ln¯1+0(y1+m×-x1)i.width(y1+m×i.width-x1)
⍝ }

⍝ Final golf:
⍝ f←{w←⍵⋄m←÷/(⊢/-⊃)p←⍸¯1≠⍵.mat⋄y x←⊃p⋄P5.size←⍵.sz⋄P5.setup←{P5.G.bg¯1⋄P5.G.ln∊{⍵,y+m×⍵-x}¨0,w.width}}
f←{w←⍵⋄m←÷/(⊢/-⊃)p←⍸¯1≠⍵.mat⋄y x←⊃p⋄P5.size←⍵.sz⋄P5.setup←{P5.G.bg¯1⋄P5.G.ln∊{⍵,y+m×⍵-x}¨⍳101}}

f i
