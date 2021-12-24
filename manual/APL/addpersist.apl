⍝ calculate additive persistence
⍝ https://codegolf.stackexchange.com/questions/1775/additive-persistence?page=2&tab=active#tab-top

{s←+/⍎¨⍕⍵⋄⍵≤9:0⋄1+∇s}
