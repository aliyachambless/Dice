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
float numDice = 2;
float average;
float totalDice;
float percentError;
public void setup()
{
	noLoop();
	size(400,500);
	background(0);
}
public void draw()
{
	background(0);
	for(int y = 0; y <= 400 - (400/numDice); y += (400/numDice)){
		for(int x = 0; x <= 400 - (400/numDice); x += (400/numDice)){
			Die dice1 = new Die(x,y,(int)(400/numDice));
			dice1.show();
			total += dice1.numDots;
			totalDice += 1;
		}
	}
	average = total/totalDice;
	percentError = (3.5f - average)/3.5f;
	fill(255,0,0);
	text("Total Dice: " + totalDice,50,430);
	text("Total Score: " + total,150,430);
	text("Average: " + average, 250, 430);
	text("Percent Error: " + percentError*100 + "%", 100, 450);

}
public void mousePressed()
{
	total = 0;
	totalDice = 0;
	redraw();
}
public void keyPressed()
{
	total = 0;
	totalDice = 0;
	if(keyCode == 38){
		numDice+=1;
	}
	if(keyCode == 40){
		numDice -= 1;
	}
	redraw();
}
class Die //models one single dice cube
{
	int dieX, dieY, numDots;
	float diceSize;
	Die(int x, int y, float dieSize) //constructor
	{
		dieX = x;
		dieY = y;
		diceSize = dieSize;
		numDots = (int)(Math.random() * 6)+1 ;
	}
	public void roll()
	{
		//your code here
	}
	public void show()
	{
		fill(255);
		rect(dieX, dieY, diceSize,diceSize);
		if(numDots == 1){
			fill(0);
			ellipse(dieX + diceSize/2, dieY + diceSize/2, diceSize/5,diceSize/5);
		}
		if(numDots == 2){
			fill(0);
			ellipse(dieX + diceSize/3.33f, dieY + diceSize/3.33f, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43f, dieY + diceSize/1.43f, diceSize/5,diceSize/5);
		}
		if(numDots == 3){
			fill(0);
			ellipse(dieX + diceSize/2, dieY + diceSize/2, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/2, dieY + diceSize/5, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/2, dieY + diceSize/1.25f, diceSize/5,diceSize/5);
		}
		if(numDots == 4){
			fill(0);
			ellipse(dieX + diceSize/3.33f, dieY + diceSize/3.33f, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43f, dieY + diceSize/1.43f, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/3.33f, dieY + diceSize/1.43f, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43f, dieY + diceSize/3.33f, diceSize/5,diceSize/5);
		}
		if(numDots == 5){
			fill(0);
			ellipse(dieX + diceSize/3.33f, dieY + diceSize/3.33f, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43f, dieY + diceSize/1.43f, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/3.33f, dieY + diceSize/1.43f, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43f, dieY + diceSize/3.33f, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/2, dieY + diceSize/2, diceSize/5,diceSize/5);
		}
		if(numDots == 6){
			fill(0);
			ellipse(dieX + diceSize/3.33f, dieY + diceSize/2, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/3.33f, dieY + diceSize/5, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/3.33f, dieY + diceSize/1.25f, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43f, dieY + diceSize/2, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43f, dieY + diceSize/5, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43f, dieY + diceSize/1.25f, diceSize/5,diceSize/5);
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
