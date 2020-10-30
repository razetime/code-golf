⍝ Dyalog Extended
⍝ Fold and squash cycle length
⍝ https://codegolf.stackexchange.com/questions/60684/counting-cycles-in-a-folding-and-squashing-process/214412#214412

∇f
≢{⊃,/↓⍉⌽@1⊢2 ¯1⍴{2|≢⍵:0,⍵⋄⍵}⍵}⌂traj⊤⎕
∇