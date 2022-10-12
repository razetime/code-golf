
//number of shots
int n=5;
int count=1;
float[][] rc = {{0.1, 0.3, 0.5, 0.1}, {-0.73, -0.12, 0, 0}};

//reads rectangle data as xmin, ymin, xmax, ymax
void setup() {
  size(400,400);
  translate(200,200);
  background(255);
  circle(0,0,100);

  
  for(int i=0; i<rc.length; i++) {
    noStroke();
    fill(255,0,0,80);
    float x1 = rc[i][0]*100;
    float y1 = rc[i][2]*100;
    float x2 = rc[i][1]*100;
    float y2 = rc[i][3]*100;
    rc[i][0] = rc[i][0]*100;
    rc[i][1] = rc[i][1]*100;
    rc[i][2] = rc[i][2]*100;
    rc[i][3] = rc[i][3]*100;
    print(rc[i][0]);
    print(rc[i][1]);
    print(rc[i][2]);
    print(rc[i][3]);
    
    rectMode(CORNERS);
    beginShape();
    vertex(x1,y1);
    vertex(x1,y2);
    vertex(x2,y2);
    vertex(x2,y1);
    
    
    
    endShape();

  }

}
void draw(){
  translate(200,200);
  if(count<=n){
    float r = 50 * sqrt(random(1));
    float theta = random(1) * 2 * PI;
    float x = r * cos(theta);
    float y = r * sin(theta);
    int flag=1;
    for(int j=0; j<rc.length;j++){
      print(x,' ',y,'\n');
      if((rc[j][0]<x && x<rc[j][2]) && (rc[j][1]<y && y<rc[j][3])){
        flag=1;break;
      }
      else {
        flag=0;
      }
    }
    if(flag==0) {
      fill(0);
      stroke(0);
      strokeWeight(3);
      point(x,y);
      count++;  
    }
  
  }
}
