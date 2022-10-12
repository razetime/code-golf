⍝ Build an ASCII table (furniture) from 'data'

{↑('   '∘,¨↓⍵),(⊂'-'/⍨a),(+/∊'data'⍷⍵)/⊂2⌽(a←6+⊃⌽⍴⍵)↑'|  |'}

⍝ Port of xash's answer:

{3⌽↑(↓'-'⍪⍨' '∘,⍣6⊢⍵),↓(+/∊'d'⍷⍵)6⍴' | '}