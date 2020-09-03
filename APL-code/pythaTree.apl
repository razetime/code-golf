⍝ Function to draw a pythagorean tree of depth n

f←{
    100 100 120 100{
        P5.g.ln ⍺,⍵
        ∇
    }120 120 100 120 100 100
}
P5.size←400 400
P5.setup←{
    
 f 1
}