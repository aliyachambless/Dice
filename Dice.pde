int total = 0;
void setup()
{
	noLoop();
	size(430,440);
	background(0);
}
void draw()
{
	background(0);
	for(int y = 10; y < 400; y += 60){
		for(int x = 10; x < 400; x += 60){
			Die dice1 = new Die(x,y);
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
	Die(int x, int y) //constructor
	{
		dieX = x;
		dieY = y;
		numDots = (int)(Math.random() * 6)+1 ;
	}
	void roll()
	{
		//your code here
	}
	void show()
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
