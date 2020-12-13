⍝ simple snake game
⍝ Finally done!

⍝ s←↓2 2⍴25 25 25 26
⍝ food←?2⌿49
⍝ off←0 1
⍝ P5.draw←{
⍝ 	f←⊃⌽s
⍝ 	P5.G.stroke←⍬
⍝ 	P5.G.bg¯1
⍝ 	P5.G.fill←0
⍝ 	s⊢←(1↓s),⊂off+f
⍝ 	((⊢≢∪)s)∨~(⊂f)∊⍳2⌿50:{⎕←'Score: ',⍕2-⍨≢s⋄P5.exit⍵}0
⍝ 	∨/∊(a∊s)∧((a←⍳2⍴50)∊⊂food):{food⊢←?2⌿49⋄s⊢←s,⊂f+2×off}1
⍝ 	{'center'P5.G.rect ⍵,2 2}¨2×s
⍝ 	P5.G.fill←'f00'
⍝ 	'center'P5.G.rect (2×food),2 2
⍝ }
⍝ P5.kp←{
⍝ 	off⊢←{⍵≡-off:←-⍵⋄⍵}(⊃'sdwa'⍳⍵)⊃(⊢,-)(⊢⍮⌽)0 1
⍝ }

⍝ After an hour of golfing...
⎕IO←0
s←2⌿⊂2⌿25
d←?x←2⌿50
o←⍳2
G←P5.G
P5.draw←{G.bg¯1
G.fill←0
s⊢←(1↓s),⊂o+f←⊃⌽s
((⊢≢∪)s)∨~f⊂⍛∊a←⍳x:P5.exit 0⊣⍞←'Score: ',⍕2-⍨≢s
⍝ ∨(a∊s)∧(a←⍳2⍴49)∊⊂d:{d⊢←?2⌿49⋄s⊢←s,⊂f+2×o}1
d≡f:s⊢←s,⊂f+2×o⊣d⊢←?x
⍝ {'center'G.rect ⍵,2 2}¨2×s
(t←'center'G.rect,∘2 2)¨2×s
G.fill←'f00'
t+⍨d}
⍝ P5.kp←{o⊢←{⍵≡-o:←-⍵⋄⍵}('sdwa'⍳⍵)⊃(⊢,-)(⊢⍮⌽)0 1}
P5.kp←{o≢-n←('sdwa'⍳⍵)⊃1-↓⍬2⍴3⊤2320:o⊢←n}


