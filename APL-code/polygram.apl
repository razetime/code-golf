⍝  Draw a polygram

n←3
k←7
f←{P5.G.ln↑30×1+2 1○ᑈ⍵÷⍨2×○{⍵,n+⍵}¨⍳⍵}
P5.draw←{
    n f k
}