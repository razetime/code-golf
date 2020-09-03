⍝ Function for a fractal tree of depth n
⍝ https://codegolf.stackexchange.com/questions/18785/create-a-fractal-tree

f←{
    0<⍵: {P5.G.ln ⍵}P5.w/2 P5.h P5.w/2 P5.h-⍵
}

P5.setup←{
    f 5
}