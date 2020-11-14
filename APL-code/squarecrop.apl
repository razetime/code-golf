⍝ Crop image to square
⍝ https://codegolf.stackexchange.com/questions/35789/crop-an-image-to-a-square?rq=1
path←'/Users/ranga/Pictures/landscape.jpg'
i←P5.img path
P5.size←2⍴a←⌊/s←i.sz
P5.draw←{i P5.G.img⍨.5×a-s⋄i.save}