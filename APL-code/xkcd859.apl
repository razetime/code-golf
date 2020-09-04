⍝ Displays xkcd alt text
⍝ Unless number is 404 or 859
⍝ https://codegolf.stackexchange.com/questions/129162/build-a-faulty-xkcd-browser/210586#210586

y←⎕JSON((⎕SE.SALT.New'HttpCommand').Get'https://xkcd.com/',⍞,'/info.0.json').Data
{y.safe_title≡'(':y.alt⋄-y}0

⍝ Explanation
y←⎕JSON((⎕SE.SALT.New'HttpCommand').Get'https://xkcd.com/',⍞,'/info.0.json').Data
                                     ⍝ Get the json data for the required page
                                     ⍝ Using ⎕SE Environment function namespace
     y.safe_title≢'(':y.alt          ⍝ If the safe title does not match a bracket,  
                           ⋄-y       ⍝ Otherwise negate y(Domain error)
{                             }0     ⍝ Call function with junk parameter