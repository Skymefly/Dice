int ranColor, ranColor1, ranColor2;
int result;
Die first;
void setup()
{
  noLoop();
  textAlign(CENTER);
  size(400, 400);
  //  background(ranColor, ranColor, ranColor);
  //  background(241, 141, 215);
}
void draw()
{
  int Total=0;
  ranColor=(int)((Math.random()*255)+1);
  ranColor1=(int)((Math.random()*255)-100);
  ranColor2=(int)((Math.random()*255)+100);
  background(ranColor, ranColor, ranColor);
  for (int y=25; y<=350; y+=75) {
    for (int x=25; x<=350; x+=75) {
      Die first = new Die(x, y);
      first.roll();
      first.show();
      Total= result+Total;
    }
  }
  fill(255);
  text("Total: "+ Total, 200, 390);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, Total;//variable declarations here
  Die(int x, int y) //constructor
  {
    result=(int)((Math.random()*6)+1);
    myX=x;
    myY=y;
  }
  //variable initializations here

  void roll()
  {
  }
  void show()
  {
    stroke(0);
    fill(255);
    rect(myX, myY, 50, 50);
    fill(0);
    if (result==1) {
      ellipse(myX+25, myY+25, 10, 10);
    }
    if (result==2) {
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
    }
    if (result==3) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    if (result==4) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
    }
    if (result==5) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    }
    if (result==6) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
    }
    //your code here
  }
}
