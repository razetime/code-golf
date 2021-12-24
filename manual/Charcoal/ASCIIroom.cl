Assign(AtIndex(q,0),k)
For(Length(q)){
	For(k){
		Print("_")		
	}
	
	Print(:Down," ")
	Print(:Down,++AtIndex(h,i))
	Move(:Up)
	
	Assign(--abs(Minus(AtIndex(q,Incremented(i)),AtIndex(q,i))),k)
	
	if(Less(AtIndex(q,i),AtIndex(q,Incremented(i)))){
		Move(:Right)
				
	}
	
	else {
		Move(:Left)
		PivotRight(4)
	}

}
