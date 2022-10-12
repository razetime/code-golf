⍝ Gets user id of a CGCC user
⍝ prints 0 if no exact match is found
⍝ This took an eternity
⍝ https://codegolf.stackexchange.com/questions/137957/whats-my-ppcg-id

a←⍞
y←(⎕JSON((⎕SE.SALT.New'HttpCommand').Get'https://api.stackexchange.com/users?site=codegolf&inname=',('\s+'⎕R'\%20')a).Data).items
{a≡1⊃y.display_name:y.user_id ⋄ 0}1

⍝ Explanation(not runnable)
a←⍞                                 ⍝ Store string input
y←        ('\s+'⎕R'\%20')a          ⍝ Convert spaces to '%20' for query
  (⎕JSON((⎕SE.SALT.New'HttpCommand').Get'https://api.stackexchange.com/users?site=codegolf&inname=',).Data).items
                                    ⍝ Get and parse JSON from API call using ⎕SE (session namespace)
 a≡⊃y.display_name                  ⍝ Is the input equal to the unwrapped user id? 
                                    ⍝ (display name comes as an array of strings)
{                  :y.user_id ⋄ 0}  ⍝ If so, print the user id
                                    ⍝ Else print zero
                                    ⍝ Call function with placeholder arg 1