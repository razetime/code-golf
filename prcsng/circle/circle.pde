// Modified from the C language example from
// https:// en.wikipedia.org/wiki/Midpoint_circle_algorithm
int r = 70; //radius
void setup() {
  size(400, 400);
}
 
void draw() {
  background(255);
  drawCircle(width/2, height/2, r, 60);
  save("Circle.png");
}

 
void drawCircle(int x0, int y0, int radius, int angle) {
  int circCol = color(0, 0, 0);
  float limit = radians(angle);
  int x = radius;
  int y = 0;
  int err = 0;
 
  while (x >= y && atan2(y, x) < limit) {
    set(x0 + x, y0 + y, circCol);
    set(x0 + y, y0 + x, circCol);
    set(x0 - y, y0 + x, circCol);
    set(x0 - x, y0 + y, circCol);
    set(x0 - x, y0 - y, circCol);
    set(x0 - y, y0 - x, circCol);
    set(x0 + y, y0 - x, circCol);
    set(x0 + x, y0 - y, circCol);
 
    y += 1;
    if (err <= 0) {
      err += 2*y + 1;
    }
    if (err > 0) {
      x -= 1;
      err -= 2*x + 1;
    }
  }
}
