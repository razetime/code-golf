⍝ X O X
⍝ O X _
⍝ O _ X
⍝ Output: X wins.

⍝ X _ O
⍝ X O _
⍝ X O X
⍝ Output: X wins.

⍝ X O X
⍝ _ O X
⍝ _ O _
⍝ Output: O wins.

⍝ X O X
⍝ O O X
⍝ X X O
⍝ Output: Tie

⍝ https://codegolf.stackexchange.com/questions/144116/tic-tac-toe-x-or-o/211061#211061

{⌈/∨⌿(1 1∘⍉∘⌽,1 1∘⍉,⍉,⊢)⍵}