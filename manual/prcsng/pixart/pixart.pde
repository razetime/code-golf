



void setup(){
  size(565,542);
  PImage p = loadImage("WhatsApp Image 2020-08-09 at 13.16.03.jpeg");
noStroke();
color[] c={#ff0000,#00ff00,#0000ff,#00ffff,#ff00ff,#ffff00,#ffffff,0};
p.loadPixels();


for(int i=0;i<p.width;i++) {
  for(int j=0;j<p.height;j++){
    float[] d = new float[8];
    color x=p.get(i,j);
    for(int k=0;k<8;k++) d[k]=sqrt(sq(red(x)-red(c[k]))+sq(blue(x)-blue(c[k]))+sq(green(x)-green(c[k])));
    int b=0;
    for(int l=0;l<8;l++){
      if(d[l]<=d[b]){
        b=l;
      }
    }
    fill(c[b]);
    rect(i,j,1,1);
    
  }
}
save("anime.png");
}
