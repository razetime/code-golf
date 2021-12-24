∇Befunge
⎕IO←0
g←⎕ ⍝ takes input as matrix
pos←0 0
m←|⍨
s←⍬ ⍝ stack
dir←⍳2
⍝>^<v
dirs←9 11∘○¨0j1*⍳4
{∊'s,←'⍵'/(s↓←¯2)⊢¯2↑s'}'+-×÷m>'['+-*/%`'⍳pos⌷g]
⍝ 0-9         s,←0-9
⍝ binary fun  s,←fun/(s↓←¯2)⊢¯2↑s
⍝ monadic fun s,←fun(s↓←¯1)⊢⊃⌽s
⍝ dirs        dir⊢←<direction>
⍝
ops←⎕D,'+-*/%`!>^<v?_|":\$.,#pg&~@'
{
    ⍝ numerics&stack 0123456789+-*/%`!:\
    ('s,←'∘,¨(,¨⎕D),({⍵,'/(s↓⍨←¯2)⊢¯2↑s'}¨'+-×÷m>'),'0=(s↓⍨←¯1)⊢⊃⌽s' '⊃⌽s' '(s↓⍨←¯2)⊢⌽¯2↑s')
    ⍝ directions >^<v?_|
    'dir⊢←'∘,¨(⍕¨dirs),(⊂⍕dirs[?4]),⍕¨(¯1*0≠⊃⌽s)×(0 1)(1 0)
    ⍝ string mode

    ⍝ move in direction
    pos+←dir

}⍣{'@'=pos⌷g}0
∇
