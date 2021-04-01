⍝ Will It Float?
⍝ This one works! Suprisingly
{(1=≢∪' '~⍨∊⍵)∧×/5>a/⍨×a←∊g↓⍉↑(g←{⊃,/{×⊃⍵:+/⍵⋄⍵}¨⍵⊂⍨1,2{≠/0=⊃¨⍺⍵}/⍵}¨)' '=⍵}

⍝ This doesn't work, for reasons 

{⎕←g←{{⍵/⍳⍴⍵}¨↓⍵}' '=⍵⋄{g search⎕←⍵}¨⎕←⊃∩/{⍵/⍨×≢¨⍵}g}