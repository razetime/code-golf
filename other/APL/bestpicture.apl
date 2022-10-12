⍝ Print the oscars best picture winner
⍝ https://codegolf.stackexchange.com/questions/111545/print-the-oscars-best-picture-winner
P5.size←2⍴200
g←P5.G
P5.draw←{0 20 g.text 'La La Land'
P5.fc>60:{g.ln 0 15 60 15⋄70 20 g.text 'Moonlight'}1}