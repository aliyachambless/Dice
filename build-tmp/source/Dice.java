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

public class Dice extends PApplet {

int total = 0;
public void setup()
{
	noLoop();
	size(430,440);
	background(0);
}
public void draw()
{
	for(int y = 10; y < 400; y += 60){
		for(int x = 10; x < 400; x += 60){
			Die dice1 = new Die(x,y);
			dice1.show();
			total += dice1.numDots;
		}
	}
	stroke(255,0,0);
	text(total,400,430);
}
public void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dieX, dieY, numDots;
	Die(int x, int y) //constructor
	{
		dieX = x;
		dieY = y;
		numDots = (int)(Math.random() * 6)+1 ;
	}
	public void roll()
	{
		//your code here
	}
	public void show()
	{
		fill(255);
		rect(dieX, dieY, 50,50);
		if(numDots == 1){
			fill(0);
			ellipse(dieX + 25, dieY + 25, 10,10);
		}
		if(numDots == 2){
			fill(0);
			ellipse(dieX + 15, dieY + 15, 10,10);
			ellipse(dieX + 35, dieY + 35, 10,10);
		}
		if(numDots == 3){
			fill(0);
			ellipse(dieX + 25, dieY + 25, 10,10);
			ellipse(dieX + 25, dieY + 10, 10,10);
			ellipse(dieX + 25, dieY + 40, 10,10);
		}
		if(numDots == 4){
			fill(0);
			ellipse(dieX + 15, dieY + 15, 10,10);
			ellipse(dieX + 35, dieY + 35, 10,10);
			ellipse(dieX + 15, dieY + 35, 10,10);
			ellipse(dieX + 35, dieY + 15, 10,10);
		}
		if(numDots == 5){
			fill(0);
			ellipse(dieX + 15, dieY + 15, 10,10);
			ellipse(dieX + 35, dieY + 35, 10,10);
			ellipse(dieX + 15, dieY + 35, 10,10);
			ellipse(dieX + 35, dieY + 15, 10,10);
			ellipse(dieX + 25, dieY + 25, 10,10);
		}
		if(numDots == 6){
			fill(0);
			ellipse(dieX + 15, dieY + 25, 10,10);
			ellipse(dieX + 15, dieY + 10, 10,10);
			ellipse(dieX + 15, dieY + 40, 10,10);
			ellipse(dieX + 35, dieY + 25, 10,10);
			ellipse(dieX + 35, dieY + 10, 10,10);
			ellipse(dieX + 35, dieY + 40, 10,10);
		}
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
