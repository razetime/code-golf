⍝ prime checker whose sum of codepoints is prime
⍝ https://codegolf.stackexchange.com/questions/107842/a-prime-test-thats-literally-prime?page=2&tab=active#tab-top

1 pco⌈⎕

⍝ +/49 4 32 19 31 181 253


⍝ Checking code:
⎕←''
⎕←'Sum of codepoints'
s←+/⎕IO-⍨⎕AV⍳'1 pco⌈⎕'
s
⎕←'Is Prime?'
1 pco s