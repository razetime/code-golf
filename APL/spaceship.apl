⍝ draw a spaceship from a work using appended spaces
⍝ https://codegolf.stackexchange.com/questions/171679/i-done-did-made-a-spaceship-maw/210963#210963

{w←⍵⋄x←{,/⍵↑¨w}¨⍳≢⍵⋄⍪x,1↓⌽x}


⍝ Explanation
{w←⍵⋄x←{,/⍵↑¨w}¨⍳≢⍵⋄⍪x,1↓⌽x} For the next few steps: ⍵ → input.
 w←⍵                         Assign ⍵ to variable for next steps
    ⋄          ¨⍳≢⍵          loop through range 1 to length(⍵)
       {,/⍵↑¨w}              inner function: ⍵ → loop variable
                             w → input string
            ¨w               loop through each character in w
          ⍵↑                 take ⍵ characters from each char, appending ⍵-1 spaces
        ,/                   Catenate(join) the modified chars
     x←                      Assign the pattern to x
                         ⌽x  Take reverse of x
                       1↓    drop first element
                             (longest line should appear only once)
                     x,      Join with x
                    ⍪        Table it to display with newlines

