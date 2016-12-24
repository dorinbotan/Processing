import peasy.*;
PeasyCam cam;

Electron e1, e2, e3;

void setup() {
  size(600, 600, P3D);
  smooth();
  cam = new PeasyCam(this, 300, 300, 300, 500);
  
  e1 = new Electron();
  e2 = new Electron();
  e3 = new Electron();
}

void draw() {
  background(0);
  
  strokeWeight(50);
  stroke(255);
  point(width / 2, height / 2);
  
  e1.show();
  
  translate(300, 0, 300);
  rotateY(PI / 2);
  e2.show();
  
  translate(0, 300, -300);
  rotateX(PI / 2);
  e3.show();
  
  translate(0, 0, 0);
}