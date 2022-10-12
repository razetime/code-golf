⍝ create a times table
⍝ P5.size←500 500
n←5
k←10
P5.setup←{
    ⍝ P5.G.circle 3⍴30
    ⍝ {P5.G.ln↑30×1+2 1○ᑈ1n×⍵×2×○÷k}¨⍳k
    n f k
}

f←{n←⍺⋄P5.G.circle 3⍴30⋄{P5.G.ln↑30×1+2 1○ᑈ1n×⍵×○2÷k}¨⍳k←⍵}

⍝ {n←⍺⋄P5.G.circle 3⍴30⋄{P5.G.ln↑30×1+2 1○ᑈ1n×⍵×○2÷k}¨⍳k←⍵}
⍝ {n←⍺⋄                                                   k←⍵} store left arg in n and right arg in k
⍝       P5.G.circle 3⍴30⋄                                        Draw circle of radius 30

⍝                                                         ⍳k     generate range 1..k
⍝                        {                              }¨       Execute the following for each number i:
⍝                                             1n×⍵×○2÷k         Multiply [1,n] with i×2π/k
⍝                                       2 1○ᑈ                  Take cos and sin of each of those
⍝                                 30×1+                          Multiply 30, add 30 to them
⍝                               ↑                               Convert to matrix
⍝                         P5.G.ln                                Plot a line using those coordinates