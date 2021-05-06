// Draw a mouse pointer

For(Range(1,8)){
	For(i){
	Oblong(q,"@")
	Move(q,:Right)
}
Move(Times(q,i),:Left)
Move(q,:Down)
}
Move(Times(3,q),:Down)
For(Range(1,4)){
Move(q,:Up)
	For(i){
	Oblong(q,"@")
	Move(q,:Right)
	}
Move(Times(q,i),:Left)

}
Move(Times(3,q),:Right)
Oblong(q,"@")
Move(0,q)
For(4){
Oblong(Times(2,q),"@")
Move(q,Times(2,q))


}