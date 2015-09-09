int total = 0;
int numDice = 5;
void setup()
{
	noLoop();
	size(400,500);
	background(0);
}
void draw()
{
	background(0);
	for(int y = 0; y < 400; y += (400/numDice)){
		for(int x = 0; x < 400; x += (400/numDice)){
			Die dice1 = new Die(x,y,(400/numDice));
			dice1.show();
			total += dice1.numDots;
		}
	}
	fill(255,0,0);
	text("Total" + total,400,430);
}
void mousePressed()
{
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
