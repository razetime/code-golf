⍝ Bubbler's binary sudoku row counting challenge
⍝ https://codegolf.stackexchange.com/questions/201094/counting-valid-binary-sudoku-rows

⍝ Brute force slow answer:
{+/(≢=2×+/)¨{⍵/⍨{⍱/0 3∊⍵}¨3+/¨⍵}↓⍉2(⊥⍣¯1)⍳2*2×⍵}

⍝ Combinations answer(Does not work):
{+/{×⍨((n-⍵-1)!⍵+1)+(n-⍵)!⍵}¨⍳1+n←⍵}