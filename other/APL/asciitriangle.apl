⍝ Draws an ASCII triangle of given base length + 1
⍝ https://codegolf.stackexchange.com/questions/109491/ascii-triangles?page=2&tab=oldest#tab-top
⍝ Annoying adge case for 0

f←{0<⍵:{⎕←⍵}¨({(⍵↑'|'),'\'}¨⍳⍵),⊂(⍵+1)⍴'-'}
f 5