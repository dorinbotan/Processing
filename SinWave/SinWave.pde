float x = 0;

void setup() {
  size(600, 600, P3D);
}

void draw() {
  noFill();
  background(255);
  
  rotateY(0.75);
  beginShape();
  for(int i = 0; i < width; i++) {
    curveVertex(i * 12, sin(i + x) * height / 4 + height / 2 * i / 100);
  }
  endShape();
  
  x += 0.5;
}