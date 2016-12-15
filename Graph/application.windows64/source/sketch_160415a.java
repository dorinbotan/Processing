import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_160415a extends PApplet {

int x, y = 0;

public void setup() {
  
  background(255);
  
}

public void draw() {
  if(mouseX > 0 && mouseX < height/2)
  {
    stroke(mouseX - 255, 255 - mouseX, 0);
    line(x, height/2, x++, height/2 - mouseX); 
  }
  
  if(mouseY > 0 && mouseY < height/2)
  {
    stroke(mouseY - 255, 255 - mouseY, 0);
    line(y, height, y++, height - mouseY);
  }
  
  stroke(0);
  drawChain();
}

public void drawChain() {
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
  fill(0, 0, 0);
  text("X-Axis", 10, 40);
  text("Y-Axis", 10, height/2 + 40);
}
  public void settings() {  fullScreen();  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_160415a" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
