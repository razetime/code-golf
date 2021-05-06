⍝ Solves a game of flood
⍝ Works, but doesn't find the shortest path


f←⍬⊣{w←⍵⋄p←{d←⊃,/{(⊂⍵),⍵∘+¨(⊢,-)(⊢,⌽¨)⊂1 0}¨⍵⋄(⍸w[1;1]=w)∩d/⍨d∊⍳⍴w}⍣≡⊂1 1⋄(⎕←⊃{⍵⌷⍨⊂0~⍨⊢/0,⊢⌸⍵}⍵[1;1]~⍨,⍵)@p⊢⍵}⍣{1=≢∪,⍺}