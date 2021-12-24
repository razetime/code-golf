⍝ Win a KQ vs K endgame
∇f
kp←⎕
qp←⎕
board←8 8⍴' '
{k←⎕
m←.5×+/x←⊃¨qp k
3<|-/x:qp⊢←⌊m,⊃⌽qp⋄kp⊢←kp+×⊃.5×+/kp k
⎕←qp
⎕←kp
⎕←disp ⊂'kKQ'@(k kp qp)⊢board
0
}⍣2⊢0
∇