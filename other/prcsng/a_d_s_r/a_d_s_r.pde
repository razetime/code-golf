void settings() { //<>//
  //size adjusts according to params
  size(a+d+64+r, 129);
}
void setup() {
  translate(1,0);
  background(255); 
  strokeWeight(3);
  
  //axes
  line(0,127,600,127);
  line(0,0,0,127);
  
  //graph
  stroke(53,113,9);
  line(0,127,a,0);
  stroke(228,77,40);
  line(a,0,a+d,127-s);
  stroke(26,39,232);
  line(a+d,127-s,a+d+64,127-s);
  stroke(110,27,109);
  line(a+d+64,127-s,a+d+64+r,127);
  
  //save to file
  save("a"+a+"d"+d+"s"+s+"r"+r+".png");
}
int a=24,d=32,s=127,r=48;
