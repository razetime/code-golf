⎕CY 'dfns'
∇f
    q a←⎕⎕
    ('select (.+) from (.+)( where (.+))?'⎕S{⍵.(1↓Lengths↑¨Offsets↓¨⊂Block)})lcase q
    a
∇
⍝ calling:
f
⎕JSON '[["data", ["d1", "d2", "3", "~!@#"], [[123, "", [980, "abc"], "false"], [456, "this isn''t empty!", [[],[]], "-123.4444"], [1, "2", [3, 4], "five"]]],["no", ["yes", "a", "1.5", "what"], []]]'
'SELECT ALL FROM data where d1=123'
