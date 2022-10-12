PImage p;
void settings() {
  p = loadImage("WhatsApp Image 2020-08-11 at 16.41.04.jpeg");
  size(p.width,p.height);
 
}
void setup() {
  p.loadPixels();
  p.pixels=sort(p.pixels);
  p.updatePixels();
  image(p,0,0);
  save("4.jpg");
}
