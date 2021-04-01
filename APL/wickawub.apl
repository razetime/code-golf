⍝ Wicka-wub a string
⍝ Currently need to fix algo for lowercase and single word strings
⍝ https://codegolf.stackexchange.com/questions/141185/wicka-wub-a-string?rq=1

h←↓{(2,⌊2÷⍨⍴⍵)⍴⍵}
i←⍞
s←h i(∊⊂⊣)⎕A
r←,/¨s
l←(1-⍨(1-⍨⊃2⊃h⍸i∊⎕A)↓⍳≢i)/⊃⊃⌽r
⎕←(⊃⊃r),(⊃,/((≢⊃s)/⊂'-wicka'),(≢⊃⌽s)/⊂'-wub'),'-',l