⍝ make da domino fall

{d←(0 ¯1)(0 1)(¯1 0)(1 0)['<>^v'⍳⍵[p←⍸⍵∊'<>^v']]⋄w←⍵⋄d{'/'=w[⍵]:{}}p+d}