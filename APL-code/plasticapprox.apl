⍝ Approximate the plastic number
⍝ https://codegolf.stackexchange.com/questions/126820/approximate-the-plastic-number/126825#126825
⍝ uses cube root method r(1+r(1+r(1+r(...))))


{{(⍺+⍵*÷3)*÷3}/⍵/1}