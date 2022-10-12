int r=50;
size(400,400);
noStroke();arc(r,r,r,r,0,PI/3);arc(r+r/2,r,r,r,2*PI/3,PI);arc(r+r/4,r+r/2.3,r,r,4*PI/3,5*PI/3);
save(r+".png");

void a(int r){size(r*2,r*2);noStroke();arc(r,r,r,r,0,PI/3);arc(r+r/2,r,r,r,2*PI/3,PI);arc(r+r/4,r+r/2.3,r,r,4*PI/3,5*PI/3);}
