int x, y = 0;

void setup() {
  fullScreen();
  background(255);
  frameRate(120);
  smooth();
}

void draw() {
  if(mouseX > 0 && mouseX < height/2)
  {
    stroke(255, 255 - mouseX/2, 0);
    line(x, height/2, x++, height/2 - mouseX); 
  }
  
  if(mouseY > 0 && mouseY < height/2)
  {
    stroke(255, 255 - mouseY/2, 0);
    line(y, height, y++, height - mouseY);
  }
  
  stroke(0);
  drawChain();
}

void drawChain() {
  // Vertical line
  strokeWeight(10);
  line(0, height/2, width, height/2);
  
  // Horizontal lines
  for(int i = 0; i < 20; i++)
  {
    if( i % 5 == 0)
      strokeWeight(5);
    else
      strokeWeight(1);
      
    line(i * 100, height, i * 100, 0);
  }
    
  textSize(25);
  stroke(255);
  fill(255);
  rect(10, 10, 32 * 2, 32);
  rect(10, height/2 + 10, 32 * 2, 32);
  fill(0, 0, 0);
  text(mouseX, 10, 40);
  text(mouseY, 10, height/2 + 40);
}