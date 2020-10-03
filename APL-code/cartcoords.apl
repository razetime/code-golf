⍝ Rotate cartesian coordinates about the origin
⍝ 

∇f
x←⎕⋄g←{(¯1 2⍴1↓x)×⍤1⊢⍵○⊃x}⋄∊⍉↑(⊂-/g⌽⍳2)⍪⊂',',¨+/g⍳2
∇

x←⎕⋄g←{(¯1 2⍴1↓x)×⍤1⊢⍵○⊃x}⋄∊⍉↑(⊂-/g⌽⍳2)⍪⊂',',¨+/g⍳2
x←⎕                                                 store input as x
   ⋄g←{                  }                          define function g:
                       ⊃x                           first element of x
                     ⍵○                             take sine & cosine of it based on argument
                 ×⍤1⊢                               multiply with each row of
       (¯1 2⍴1↓x)                                   the points reshaped into pairs
                          ⋄                         finally,
                                              +/g⍳2 x sin theta + y cos theta
                                        ⊂',',¨      prepend comma to each
                                       ⍪            joined with
                              (⊂-/g⌽⍳2)             x cos theta - y sin theta
                            ⍉↑                      convert to matrix and transpose
                           ∊                        and enlist the elements
