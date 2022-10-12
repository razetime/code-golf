
color[] palette={#000000,#FFFFFF,#C0C0C0,#808080,#7E0308,#FC0D1B,#FFFD38,#807F17,#0F7F12,#29FD2E,#2DFFFE,#11807F,#020C7E,#0B24FB,#FC28FC,#7F0F7E,#807F44,#FFFD88,#2AFD85,#044040,#1783FB,#85FFFE,#8184FC,#06427E,#7F25FB,#7F400D,#FD8049,#FC1681};
PImage p;
int currTime;
int sTime=0;
int yPix;
void settings() {
  p=loadImage("arun-clarke-V-bkeYsTflY-unsplash.jpg");
  yPix = 0;
  
  size(p.width,p.height);
}
void setup() {
  frameRate(p.width);
    noStroke();
  rectMode(CENTER);
  //image(p,0,0);
  //for(int i=0; i<palette.length;i++) {
  //  fill(palette[i]);
  //  square(i*20,0, 20);
  //}
}

void draw() {

    
    int x =  int(random(p.width));
    int y = int(random(p.height));
    color randPix = p.get(x,y);
    float[] d = new float[palette.length];
    for(int k=0;k<palette.length;k++) {
    d[k]=abs(red(randPix)-red(palette[k]))+abs(blue(randPix)-blue(palette[k]))+abs(green(randPix)-green(palette[k]));
    }int b=0;
    for(int l=0;l<palette.length;l++){
      if(d[l]<=d[b]){
        b=l;
      }
    }
    fill(palette[b]);
    rect(x,y,2,4);
    rect(x,y,4,2);
  

 
}
void mouseClicked() {
  noLoop();
  save("car in night.png");
}
