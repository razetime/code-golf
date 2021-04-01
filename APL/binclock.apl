⍝ ASCII Binary clock
⍝ Dyalog extended

' .'':'[4 4⊤⍎¨{×≢⍵:⍵~':'⋄∊1↓¨⍕¨100+3↑3↓⎕TS}⍞]