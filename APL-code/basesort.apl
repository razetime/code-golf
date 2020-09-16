⍝ Fins the sum of digits of a power sequence of a^1-n converted to base b
⍝ then sort ascending
⍝ https://codegolf.stackexchange.com/questions/47562/digit-sum-of-powers-in-bases

⍝ Doesn't work properly, cause ⍺+1 shape is not enough.
{(⊂∘⍋⌷⊢)+⌿((⍺+1)⍴⊃⌽⍵)⊤(⊃⍵)*⍳⍺}

⍝ Jo King's correction
⍝ decodes till zero.
{(⊂∘⍋⌷⊢)+⌿(⊃⌽⍵)(⊥⍣¯1)(⊃⍵)*⍳⍺}

⍝ Explanation
{(⊂∘⍋⌷⊢)+⌿(⊃⌽⍵)(⊥⍣¯1)(⊃⍵)*⍳⍺} ⍺ → n, ⍵ → [a,b]
                          ⍳⍺  range (1..n) 
                     (⊃⍵)*    a to the power of the range
          (⊃⌽⍵)               take b from reverse of ⍵
               (⊥⍣¯1)         decode using b till it reaches zero
        +⌿                    reduce with addition along non-leading axis
                              i.e: sum the columns
 (⊂∘⍋⌷⊢)                      tacit fn:
    ⍋                         Get indices for ascending order
     ⌷                        Get elements at those indices
      ⊢                       From the right arg
  ⊂                           Enclose it