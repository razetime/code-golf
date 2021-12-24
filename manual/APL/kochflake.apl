⍝ Koch snowflake program
P5.size←2⍴600
tx←120
ty←200
th←0
l←3
f←{
    nx← ⍵ × tx + 2 ○ th
    ny← ⍵ × ty + 1 ○ th
    P5.G.ln tx ty nx ny
    tx←nx
    ty←ny
}
ks←{⍵=0:f ⍺  ⍝ ⍵ is level, ⍺ is size
    (⌊⍺÷3)∇⍵-1
    th+←60
    (⌊⍺÷3)∇⍵-1
    th-←120
    (⌊⍺÷3)∇⍵-1
    th+←60
    (⌊⍺÷3)∇⍵-1
}

P5.draw←{
    th+←60
    400 ks 3
    th-←120
    400 ks 3
    th-←120
    400 ks 3
    th+←180

}