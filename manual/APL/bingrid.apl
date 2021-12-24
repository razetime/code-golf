⍝ Makes a grid out of the 16-bit representation of a binary number.
⍝ https://codegolf.stackexchange.com/questions/58243/16-bit-binary-grid/210395#210395
⍝ See the Pip answer in Pip/binGrid.pip
⍝ Not complete yet.

'box'⎕CY'dfns'
{⍬1 1box 4 4⍴⍵⊤⍨16⍴2}