⍝ Bacon's cipher
⍝ Not Complete



f←{1 ⎕C@(⍸,⍉(2/⍨≢⍵)⊤(⎕UCS⍵)-1)⊢(~∘' ')⍺}