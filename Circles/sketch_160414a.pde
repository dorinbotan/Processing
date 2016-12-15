int x = 20;
int y = 20;

void setup() {
  size(800, 800);
  smooth();
}

void draw() {
  background(random(255), random(255), random(255));
  
  for(int i = 0; i < 41; i++)
    for(int j = 0; j < 41; j++) {
      fill(random(255), random(255), random(255));
      ellipse(i * 20, j * 20, x, y);
      sleep(100);
    }
}