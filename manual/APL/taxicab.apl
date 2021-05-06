⍝ Check if a number is a Hardy-Ramanujan number(sum of 2 cubes)
⍝ https://codegolf.stackexchange.com/questions/126264/am-i-a-secondary-taxicab

f←{w←⍵⋄2≤2÷⍨+/⍵=∊{⍵+3*⍨⍳w}¨3*⍨⍳⍵}

⍝ second iteration with dzaima's help to reduce inner dfns
f←{4≤+/⍵=∊∘.+/2⍴⊂3*⍨⍳⍵}

⍝  EVEN FURTHER REDUCTION from dzaima (works only in dzaima/APL)
{4≤⍵⍧∘.+⍨3*⍨⍳⍵} 
