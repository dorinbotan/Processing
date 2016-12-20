void setup() {
  size(600, 600);
  background(255);
}      

void draw() {
  frameRate(60);
  
  for(int x = 0; x < width; x++) {
    for(int y = 0; y < height; y++) {
      set(x, y, color(random(1) * 255));
    }
  }
}