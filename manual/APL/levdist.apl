⍝ Steps of Levenshtein distance
⍝ This took a while
⍝ https://codegolf.stackexchange.com/questions/51402/each-step-of-the-levenshtein-distance/215047#215047

{⍺<Ö≢⍵:⍺∇⎕←0~⍨0@(⊃(⍸~p)~⍳⊃⌽⍸p←⍵=⍺↑⍨≢⍵)⊢⍵⋄j←⊃⍸⍺≠⍵⋄⍺≢⍵:⍺∇⎕←⍺[j]@j⊢⍵}


