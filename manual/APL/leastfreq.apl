⍝ First 10 least occurring alphanumeric chars in a string
⍝ Displayed in a stupid format I hate it

{10↑⌽(⊂∘⍋⌷⊢)⌽{(⊂⍺,':'),⊂≢⍵}⌸{⍵/⍨⍵∊⎕D,¯1⎕C⎕A}¯1⎕C⍵}