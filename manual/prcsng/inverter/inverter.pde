PImage p;
void settings(){
  p=loadImage("mika.jpg");
  size(p.width,p.height);
  noLoop();
  
}
void setup(){
  image(g,0,0);
  filter(INVERT);
}
