⍝ simple triangle pattern
⍝ Very badly golfed. Probably will change this tomorrow.
⍝ 

{↑('  ',(4×⌊⍵÷2)⍴'_')(((4×⌈⍵÷2)⍴' /\ '),(2×0=2|⍵)⍴' /') (((4×⌈⍵÷2)⍴'/__\'),((0=2|⍵)⍴'/'))}