⍝ Talk interpreter
⍝ https://codegolf.stackexchange.com/questions/190819/talk-interpreter/190840#190840

⍝ tacit fn with abrudz's help
(+⌷13⍴0 1,9/⊣)/⌽

⍝ train plus abrudz's tips
{(13⍴0 1,9/⍺)[⍺+⍵]}/⌽


⍝ Original idea
{(0 1,(9/⍺),0 1)[⍺+⍵]}/⌽

⍝ As a dfn (takes string)
g←{{(0 1 ,(9/⍺), 0 1)[⍺+⍵]}/⌽(⍎¨((⍴⍵) ⍴ 1 0) ⊂ ('0',⍵))}