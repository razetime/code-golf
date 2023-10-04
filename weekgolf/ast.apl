⍝ This works correctly, but succumbs to a WS FULL.
⍝ There is likely a way to do this with regex.
0{∧/⍵∊⎕D:' ',⍵ ⋄ x←⌈/⊃(⊂⍬)~⍨'+-' '*%/'(⍸∊⍨)¨⊂⍵ ⋄ w←⍺⍴' '⋄ n,w,('left:',(⍺+1)∇(x-2)↑⍵),n,w,'op: ',⍵[x],n,w,('right:',(⍺+1)∇(x+1)↓⍵)}⍞