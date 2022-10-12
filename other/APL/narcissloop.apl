⍝ ⍡ allows for a pretty cute answer,along with some simplifications.
⍝ https://codegolf.stackexchange.com/questions/214846/narcissistic-loop-lengths/214921#214921

⎕IO←0

{1⊃⍸⌽(⊢/=⊢){+/(⊢*≢)10⊤⍵}⍡⍵⊢⍵}
