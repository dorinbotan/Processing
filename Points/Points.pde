import peasy.*;
PeasyCam cam;

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 200);
  
  noSmooth();
}

float i = 1;
boolean flag = true;

void draw() {
  background(0);
  
  stroke(255);
  strokeWeight(i);
  
  if(flag)
    i += 0.1;
  else
    i -= 0.1;
    
  if(i >= 20. || i <= 0.)
    flag = !flag;
  
  for(int x = 0; x < 10; x++) {
    for(int y = 0; y < 10; y++) {
      for(int z = 0; z < 10; z++) {
        point(x * 6, -y * 6, z * 6);
        point(-x * 6, y * 6, z * 6);
        point(-x * 6, -y * 6, z * 6);
        point(x * 6, y * 6, z * 6);
      }
    }
  }
}