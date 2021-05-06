void chaosGame(int points[], float x, float y, float ratio, int n){
  for(int i=0; i<=n; i++){
    stroke(255);
      for(int j=0; j<points.length;j+=2) point(points[j],points[j+1]);
      stroke(0);
      float nextX = x - points[floor(random(points.length/2))*2]; 
      nextX = abs(nextX)/2;
      float nextY = y - points[floor(random(2,points.length/2))*2-1]; 
      nextY = abs(nextY)/2;
      print(nextX, nextY);
      point(nextX,nextY);
      x=nextX;
      y=nextY;
  }
}

void setup() {
  size(500,500);
  strokeWeight(5);
  chaosGame(new int[]{2,400,402,400,202,53},200,200,0.5,50);
}
