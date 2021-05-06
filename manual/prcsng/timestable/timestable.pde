void timesTable(float n, float k){
  
  circle(0,0,1);
  for(int i=0;i<n;i++){
     float x = i*2*PI/n;
     float y = k*x;
     line(cos(x),sin(x),cos(y),sin(y));
  }

}

void setup() {
  translate(width/2,height/2);
  scale(20);
  strokeWeight(0.1);
  timesTable(2,10);
  
}
