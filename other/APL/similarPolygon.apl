⍝ Check if two polygons are similar
⍝ So far, only checks sides
⍝ I want to make this with imaginary points(which should be a ton easier.)
f←{+/(1=≢∘∪)¨÷⌿¨⊃,/{{(⊂⍵),⊂(⌽@1) ⍵}⍵(⌽@1)w}¨⍳1⌷⍴w←↑2(2*∘÷⍨1⊥2*⍨-)/¨(⊢,⊂∘⊃)¨⍵}


⍝ Test cases(These took an eternity)
f (↓4 2⍴(0, 0), (1, 0), (1, 1), (0, 1)) (↓4 2⍴(¯1, 0), (2, 1), (1, 4), (¯2, 3))
f (↓3 2⍴(2, 3), (0, 0), (4, 0)) (↓6 2⍴(-3, 0), (-2, 2), (0, 1), (1, -1), (-1, -2), (-2, -2))
f (↓5 2⍴(1, 4), (1, 3), (0, 2), (1, 1), (-3, 2))(↓5 2⍴(2, 0), (2, -1), (3, -1), (4, -2), (-2, -2))
f (↓4 2⍴(¯1, 0), (2, 1), (1, 4), (¯2, 3))(↓4 2⍴(1, 4), (2, 1), (¯1, 0), (¯2, 3))
f (↓5 2⍴(¯2, 0), (¯1, 1), (0, 1), (1, 3), (1, 0))(⌽↓5 2⍴(5, 4), (4, 2), (3, 2), (2, 1), (5, 1))
f (↓4 2⍴(2, 13), (4, 8), (2, 3), (0, 8))(↓4 2⍴ (0, 0), (5, 0), (8, 4), (3, 4))
⍝ f (↓3 2⍴0 0 1 2 1 0)(↓3 2 ⍴ 2 0 2 2 3 0)