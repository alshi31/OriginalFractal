public void setup() 
{
  size(500, 500);
  rectMode(CENTER);
  noLoop();
}
public void draw()
{
  background(0);
  myRectFractal(250, 250, 300);
  myEllipseFractal(250, 250, 100);
  myEllipseFractal(125, 125, 50);
}
public void myRectFractal(int x, int y, int siz)
{
  rect(x, y, siz, siz);
  if (siz > 10)
  {
    myRectFractal(x-siz/2, y, siz/3);
    myRectFractal(x+siz/2, y, siz/3);
    myRectFractal(x, y-siz/2, siz/3);
    myRectFractal(x, y+siz/2, siz/3);
  }
}
public void myEllipseFractal(int x, int y, int siz)
{
  ellipse(x, y, siz, siz);
  if (siz > 15)
  {
    myEllipseFractal(x-siz/3, y, siz/3);
    myEllipseFractal(x+siz/3, y, siz/3);
    myEllipseFractal(x, y-siz/3, siz/3);
    myEllipseFractal(x, y+siz/3, siz/3);
  }
}
