⍝ Green spray paint pattern generator
⍝ Algorithm is correct, adding green channel tbd

S←250
N←800
M←7000
D←(1, 2) (¯1, 2) (1, ¯2) (¯1, ¯2) (2, 1) (¯2, 1) (2, ¯1) (¯2, ¯1)
P5.size←2⍴S
point←2÷⍨2⍴S
counter←0
reps←0
P5.setup←{
	P5.G.bg'0'
}

P5.draw←{
	reps>N:reps←N+1
	counter>M:counter←0
	P5.G.stroke←'0100ff00'
	P5.G.pt point
	p←point∘+¨D
	p←(×/↑(S>p)∧0<p)⌿p
	point←p⊃⍨?≢p
	counter+←1
	reps+←1

}