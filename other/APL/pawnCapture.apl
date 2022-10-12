⍝ Takes FEN and tells if there are any pawn captures possible
⍝ https://codegolf.stackexchange.com/questions/59147/capture-on-the-pawn-chessboard

'p.{7}(..)?P'{≢⍺ ⎕S⍬⊢⍵}('\d'⎕R{' '⍴⍨⍎⍵.Match})⍞