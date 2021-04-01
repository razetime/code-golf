⍝ Binary images of triangle counts

⍝ Unicode:

{' ⎕'[0⍺↓(2/⍨⍵)⊤{⌊0.5+48÷⍨×⍨⍵+3×2|⍵}¨⍳⍵]}

⍝ Extended: 

' ⎕'[⊤⌊.5+12÷⍨×⍨⊥⊖0 2⊤…⎕⎕]

⍝ Husk equivalent:
↔T' m(↔m!"□ "ḋi/48□S+o*3%2)