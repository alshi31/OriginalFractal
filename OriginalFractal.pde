public void setup() 
{
  size(500, 500);
  rectMode(CENTER);
  noLoop();
}
public void draw()
{
  background(0);
  fill(255, 255, 170);
  noStroke();
  myRectFractal(250, 250, 200);
  stroke(0, 0, 0);
  fill(255, 255, 200);
  myRectFractal(100, 100, 70);
  myRectFractal(400, 100, 70);
  myRectFractal(100, 400, 70);
  myRectFractal(400, 400, 70);
  fill(108, 180, 237);
  myEllipseFractal(100, 100, 50);
  myEllipseFractal(400, 100, 50);
  myEllipseFractal(100, 400, 50);
  myEllipseFractal(400, 400, 50);
  fill(190, 134, 255);
  myEllipseFractal(50, 250, 40);
  myEllipseFractal(250, 50, 40);
  myEllipseFractal(450, 250, 40);
  myEllipseFractal(250, 450, 40);
  fill(49, 255, 240);
  myEllipseFractal(250, 350, 50);
  myEllipseFractal(350, 250, 50);
  myEllipseFractal(150, 250, 50);
  myEllipseFractal(250, 150, 50);
  fill(108, 180, 237);
  myEllipseFractal(250, 250, 125);
}
public void myRectFractal(int x, int y, int siz)
{
  rect(x, y, siz/2, siz/2);
  if (siz > 10)
  {
    myRectFractal(x-siz/2, y, siz/3);
    myRectFractal(x+siz/2, y, siz/3);
    myRectFractal(x, y-siz/2, siz/3);
    myRectFractal(x, y+siz/2, siz/3);
  }
  if (siz > 200)
  {
    myRectFractal(x-siz/3, y, siz/2);
    myRectFractal(x+siz/3, y, siz/2);
    myRectFractal(x, y-siz/3, siz/2);
    myRectFractal(x, y+siz/3, siz/2);
  }
}
public void myEllipseFractal(int x, int y, int siz)
{
  ellipse(x, y, siz/3, siz/3);
  if (siz > 7)
  {
    myEllipseFractal(x-siz/3, y, siz/3);
    myEllipseFractal(x+siz/3, y, siz/3);
    myEllipseFractal(x, y-siz/3, siz/3);
    myEllipseFractal(x, y+siz/3, siz/3);
  }
  if (siz > 10)
  {
    myEllipseFractal(x-siz/2, y, siz/2);
    myEllipseFractal(x+siz/2, y, siz/2);
    myEllipseFractal(x, y-siz/2, siz/2);
    myEllipseFractal(x, y+siz/2, siz/2);
  }
}

