⍝ Simulate TIS-100 drawing

+/{{⍵≠4:3/⍵⋄4 0 0}¨(-1⊃⍵)⊖(-0⊃⍵)⌽36 22↑1(≢2↓⍵)⍴2↓⍵}¨¯1(≠⊆⊢)⎕
                                                              ⎕ Take the input
                                                       ¯1(≠⊆⊢)  split on -1s
  {                                                  }¨         do the following for each subarray i:
                                                 2↓⍵           Drop the 2 coordinates
                                        1(≢2↓⍵)⍴               Convert i to a 1-row matrix
                                  36 22↑                       create a 36x22 matrix with zeros, containing i
                           (-0⊃⍵)⌽                              rotate i to the required x coordinate
                    (-1⊃⍵)⊖                                     rotate i to the required y coordinate
    {             }¨                                            apply the following to each element:
     ⍵≠4:3/⍵                                                    if it's not red, assign a shade of grey
            ⋄4 0 0                                              otherwise assign red
+/                                                              sum all the resulting matrices