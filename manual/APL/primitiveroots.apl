⍝ matrix of primitve roots


{{⍵⍴⍨{a⊃⍨⊃⍋+/↑a←⍸⍵=∘.×⍨⍳⍵}≢⍵}⊃x⌿⍨⍵∘{1=≢⍵~⍨⍳⍺}¨x←↓⍵|∘.*⍨⍳⍵-1}41L