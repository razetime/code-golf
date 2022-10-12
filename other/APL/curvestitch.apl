⍝ Creates a curve from lines drawn consecutively
⍝ Made with a lot of help from dzaima → https://github.com/dzaimas
⍝ https://codegolf.stackexchange.com/questions/37716/curve-stitching
n←20
p←20
i←0
⎕IO←0
P5.size←2⍴n×p
f←{r←⍵⋄{P5.G.ln(r×⍵) 0 0 (r×⍺-⍵)}¨⍳⍺} ⍝ Ungolfed function
g←{P5.G.ln↓⍉↑(⍵×⍳⍺)⍬⍬(⍵×⍺-⍳⍺)}
h←  ⍝ adam's version
⍝ i←{P5.G.ln↓⍉↑⍵×(⍳⍺)⍬⍬(⍺-⍳⍺)} another one from aDam
P5.setup←{
    ⍝ n f p
    n h p
}

⍝←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←
⍝ Older, non-function versions:
⍝→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→

⍝ P5.draw←{
⍝     6{i<⍺:{P5.G.ln (⍵×i) 0 0 (⍵×(⍺-i))}}72
⍝ i+←1
⍝ }
⍝ P5.draw←{
⍝     i<n:P5.G.ln (p×i) 0 0 (p×(n-i))
⍝     i+←1
⍝ }


⍝ P5.draw←{
⍝     P5.fc<n:P5.G.ln (p×P5.fc) 0 0 (p×(n-P5.fc))
⍝ }