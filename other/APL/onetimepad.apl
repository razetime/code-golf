⍝ One time pad with modulus 26 and only uppercase letters allowed
⍝ https://codegolf.stackexchange.com/questions/5178/implement-a-one-time-pad?rq=1

⍝ Encryption function:
{⎕←⎕A[x←26?⍨⍴⍵]⋄⎕A[1+26|(⎕A⍳⍵)+x]}

⍝ Encryption function golfed (Adam's idea):
{⎕A[⍉x,⍪26|(⎕A⍳⍵)+x←26?⍨⍴⍵]}
{⎕A[↑x(26|(⎕A⍳⍵)+x←26?⍨⍴⍵)]}

⍝ Decryption function:
{⎕A[26|-⌿⎕A⍳↑⍺ ⍵]}

⍝ Full Program from the above:
∇prg
{'N'∊⍞:{⎕A[⍉x,⍪26|(⎕A⍳⍵)+x←26?⍨⍴⍵]}⍞⋄⍞{⎕A[26|-⌿⎕A⍳↑⍺ ⍵]}⍞}1
∇

⍝ Full program without braced fns:
∇prg
{'N'∊⍞:⎕A[⍉x,⍪26|(⎕A⍳w)+x←26?⍨⍴w←⍞]⋄⎕A[26|-⌿⎕A⍳↑⍞⍞]}1
∇
⍝ final program:
∇prg
⎕A[26|{'N'∊⍞:⍉x,⍪(⎕A⍳w)+x←26?⍨⍴w←⍞⋄-⌿⎕A⍳↑⍞⍞}1]
∇


⍝ Explanation
      {                                    }1  inner fn(called with junk param)
           ⍞                                   first input
       'N'∊                                    is 'N' present in it?
            :⍉x,⍪(⎕A⍳w)+x←26?⍨⍴w←⍞             if so, eNcrypt:
                               w←⍞              store message in w
                          26?⍨⍴                 generate 26 random numbers,
                        x←                      store in x
                 (⎕A⍳w)+                        add that to the indices in the alphabet
                ⍪                               table them
              x,                                join with the random numbers
             ⍉                                  transpose to get key and value
                                  ⋄-⌿⎕A⍳↑⍞⍞    else, decrypt:
                                         ⍞⍞     get key and value
                                        ↑       convert to matrix
                                     ⎕A⍳        get the indices of both in the alphabet
                                   -⌿           difference of all columns
   26|                                          mod the result of the inner fn.
  [                                          ] index the result of the program in 
⎕A                                             the capitalized alphabet.


