class Electron {
  float angle = 0;
  
  void show() {
    strokeWeight(20);
    stroke(255);
    
    float x = width / 2 + 150 * cos(angle);
    float y = width / 2 + 150 * sin(angle);
    point(x, y);
    angle += 0.05;
    
    strokeWeight(1);
    noFill();
    ellipse(width / 2, width / 2, 300, 300);
  }
}