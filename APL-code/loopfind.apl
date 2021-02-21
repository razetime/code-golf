⍝ find a loop
⍝ https://razetime.github.io/APLgolf/?h=AwA&c=q9Z41LvlUe9WzUdtE4Go@lHvmkedix717gCKWVWD6cWH1hs@6lqk8ainSx@icvKj3s2PejpAvFqI0kfdLQa1h1aApbbWAgA&f=S1NQd1C3fdQ2UV0PC1BXgAo7gAAWYShGFQarROiACiP0owrDRdFUwwCalTgciCYMAA&i=AwA&r=tryAPL&l=apl-dyalog&m=dfn&n=f

{(⍴⍵)↑↑{⍬≢⍸⍵:{⍸⍣¯1⊢(⌊/⍵)↓⍳⌈/⍵}⍸⍵⋄0}¨↓⍵}