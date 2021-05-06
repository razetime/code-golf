⍝ Graph number of results in google search
⍝ https://codegolf.stackexchange.com/questions/37959/graph-google-search-results
⍝ for some reason it doesn't find the number of results corrently

f←{'[0-8,]*'⎕S{⍵.Match}(⎕SE.SALT.New'HttpCommand'('GET'('http://google.com/search?q=','+'@(' '∘=)⍵))).Run.Data}