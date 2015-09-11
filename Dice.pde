int total = 0;
float numDice = 2;
float average;
float totalDice;
float percentError;
void setup()
{
	noLoop();
	size(400,500);
	background(0);
}
void draw()
{
	background(0);
	for(int y = 0; y <= 400 - (400/numDice) + 1; y += (400/numDice)){
		for(int x = 0; x <= 400 - (400/numDice) + 1; x += (400/numDice)){
			Die dice1 = new Die(x,y,(int)(400/numDice));
			dice1.show();
			total += dice1.numDots;
			totalDice += 1;
		}
	}
	average = total/totalDice;
	percentError = (3.5 - average)/3.5;
	fill(255,0,0);
	text("Total Dice: " + totalDice,50,430);
	text("Total Score: " + total,150,430);
	text("Average: " + average, 250, 430);
	text("Percent Error: " + percentError*100 + "%", 100, 450);

}
void mousePressed()
{
	total = 0;
	totalDice = 0;
	redraw();
}
void keyPressed()
{
	total = 0;
	totalDice = 0;
	if(keyCode == 38){
		numDice+=1;
	}
	if(keyCode == 40 && numDice > 1){
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
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(dieX, dieY, diceSize,diceSize);
		if(numDots == 1){
			fill(0);
			ellipse(dieX + diceSize/2, dieY + diceSize/2, diceSize/5,diceSize/5);
		}
		if(numDots == 2){
			fill(0);
			ellipse(dieX + diceSize/3.33, dieY + diceSize/3.33, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43, dieY + diceSize/1.43, diceSize/5,diceSize/5);
		}
		if(numDots == 3){
			fill(0);
			ellipse(dieX + diceSize/2, dieY + diceSize/2, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/2, dieY + diceSize/5, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/2, dieY + diceSize/1.25, diceSize/5,diceSize/5);
		}
		if(numDots == 4){
			fill(0);
			ellipse(dieX + diceSize/3.33, dieY + diceSize/3.33, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43, dieY + diceSize/1.43, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/3.33, dieY + diceSize/1.43, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43, dieY + diceSize/3.33, diceSize/5,diceSize/5);
		}
		if(numDots == 5){
			fill(0);
			ellipse(dieX + diceSize/3.33, dieY + diceSize/3.33, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43, dieY + diceSize/1.43, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/3.33, dieY + diceSize/1.43, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43, dieY + diceSize/3.33, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/2, dieY + diceSize/2, diceSize/5,diceSize/5);
		}
		if(numDots == 6){
			fill(0);
			ellipse(dieX + diceSize/3.33, dieY + diceSize/2, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/3.33, dieY + diceSize/5, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/3.33, dieY + diceSize/1.25, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43, dieY + diceSize/2, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43, dieY + diceSize/5, diceSize/5,diceSize/5);
			ellipse(dieX + diceSize/1.43, dieY + diceSize/1.25, diceSize/5,diceSize/5);
		}
	}
}
