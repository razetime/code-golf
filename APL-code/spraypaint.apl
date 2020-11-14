S←250
N←800
M←7000
D←(1, 2) (¯1, 2) (1, ¯2) (¯1, ¯2) (2, 1) (¯2, 1) (2, ¯1) (¯2, ¯1)
P5.size←2⍴S
point←2÷⍨2⍴S
counter←0
P5.setup←{
	G.bg'0'
	cp←point+D

}