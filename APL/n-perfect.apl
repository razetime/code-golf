⍝ check if number is n-perfect
⍝ https://codegolf.stackexchange.com/questions/211028/n-perfect-numbers/211048#211048

(⊢×⌊=⊢)⊢÷⍨1⊥∘⍸0=⍳|⊢

{(⊢×⌊=⊢)⍵÷⍨+/⍸0=⍵|⍨⍳⍵}
Explanation
{(⊢×⌊=⊢)⍵÷⍨+/⍸0=⍵|⍨⍳⍵} ⍵ → input
                   ⍳⍵  range 1-⍵
                ⍵|⍨    mod ⍵
              0=       check which ones are divisors
             ⍸         get the indices (factors)
           +/          sum the factors
        ⍵÷⍨            divide by ⍵
 (⊢×⌊=⊢)               Inner tacit fn:
    ⌊=⊢                Floor equals right? (integer test, returns 0 or 1)
  ⊢×                   times right 