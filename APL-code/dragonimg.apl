⍝ The Image of the Dragon
⍝ Dragon-curvify an image by shifting back and forth

s←4
i←P5.image n←'/Users/ranga/Documents/this-guy-SK6KOj0MaRc-unsplash.jpg'
j←{r←(x÷s×2)×x⍴(s÷⍨x←⊃⍴⍵)⌿1 ¯1⋄2|2⍟s+←s:←(-r)⌽⍵⋄⍉r⌽⍉⍵}⍣{s=⊃⍴⍺}⊢i.mat
⍝ f←{x←((⊃⍴a)⍴s↑1)⊂[~2|s]⍵⊣⎕←''⊣⎕←⍵⋄i←(≢x)⍴0 1⋄r←(⊃⍴⍵)÷s×2⋄⊃,/r(⌽[2|s]¨@(⍸~i))(-r)(⌽[2|s]¨@(⍸i))x}
P5.size← i.width i.height
P5.setup←{
	
0 0 P5.G.img j←P5.img j
	j.save '1.png',⍨¯4↓n
}


⍝ Golfed:
⍝ f←{w←P5.image⍵⋄x←⊃P5.size←w.sz⋄s←4⋄P5.setup←{0 0P5.G.img P5.img{r←(x÷s×2)×x⍴(x÷s)⌿1¯1⋄2|2⍟s+←s:←⍵⌽⍨-r⋄⍉r⌽⍉⍵}⍣{s=x}w.mat}}
⍝ f '/Users/ranga/Documents/aplogo.png'

