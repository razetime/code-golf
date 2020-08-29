
void setup() {
  float n=2;
  size(300,300);
  translate(150,150);
    background(255);
  strokeWeight(3);
  scale(2);
  for(float x=-3; x<=3;x+=0.01){
    point(x,pow(-n,x));
    print(x,'\n');
  }
}
