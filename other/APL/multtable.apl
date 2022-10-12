⍝ Multiplication table
⍝ Cleaner version
⍝ https://codegolf.stackexchange.com/questions/181582/print-a-physical-multiplication-table

{{' ',⍨' '⍪⍨⍵⍴'○'}¨∘.,⍨∘⍳⍵}