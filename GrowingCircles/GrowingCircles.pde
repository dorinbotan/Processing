int[] circles;
int count = 25;
int speed = 2;
int thickness = 2;

float arc;

void setup() {
  size(600, 600);
  
  arc = sqrt(pow(width, 2) * 2);
  
  circles = new int[count];
  
  for(int i = 0; i < count; i++) {
    circles[i] = (int)(arc / count * i);
    System.out.println(circles[i]);
  }
}

void draw() {
  background(0);
  noFill();
  
  strokeWeight(thickness);
  
  //translate(0, height / 6);
  //rotateX(PI / 3);
  
  for(int i = 0; i < count; i++) {
    circles[i] += speed;
    if(circles[i] >= arc)
      circles[i] = 0;
    
    stroke(255, 255, 255, map(circles[i], 0, sqrt(pow(width, 2)), 0, 255));
    ellipse(width / 2, height / 2, circles[i], circles[i]);
  }
}