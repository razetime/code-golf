⍝ taxicab in san francisco
⍝ bit tough, but a good question.


⍝ This version is wrong because it's awfully optimized and searches only one possible path length.
{m←,(⍳⊃⍴⍵)∘.,⍳2⊃⍴⍵⋄w←⍵⋄{s←+/↑{w[⍵]}¨⍵⋄⍵[⍋s]/⍨s=⊃s[⍋s]}∪{⍵/⍨{((1 1)≡⊃⍵)∧((⍴w)≡⊃⌽⍵)}¨⍵}{⍵/⍨≢¨⍵}{⍵/⍨∧/1=+/¨|2-/⍵}¨↓m[(1-⍨+/⍴⍵)cmat≢m]}

{w←⍵ ⋄ {~×≢⍵∩¨a←⍵∘,¨⊂¨{⍵/⍨∧/¨1≤⍵}(⊂⊃⌽⍵)+¨(⊢,-)(⊂∘⊢,⊂∘⌽)1,0:⍬⋄∧/(⍴w)≥⊃⌽⍵:∇¨a⋄⍬}⊂1 1}