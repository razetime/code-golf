⍝ arc of a thrown ball
⍝ https://codegolf.stackexchange.com/questions/111861/draw-the-arc-of-a-ball?page=2&tab=active#tab-top

{(⌽,⊢)⍉↑{⍵↑'O'}¨1,1-1↓+\⍳⍵+1}