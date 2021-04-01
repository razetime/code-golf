⍝ Draw a mouse pointer
⍝ https://codegolf.stackexchange.com/questions/211641/cat-a-mouse-ascii-art-pointers/211644#211647

x←⎕AV[128 192 224 240 248 252 254 240 216 152 12 12 6 6 3 3]
{⍵/⍵⌿⍉2(⊥⍣¯1)⎕AV⍳x}

⍝ Valid answer:
{⎕A[1+⍵/⍵⌿⍉⊤(⎕AV⍳'⌷⊤└¶⍝ ⎕¶"í'),2/12 6 3]}