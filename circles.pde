float  i, j;
int x;

void setup()
{
  size(500, 500);
  color(HSB);
  background(255);
  smooth();
  noStroke();
  frameRate(10);
  i=20;
  j=20;
  strokeWeight(1);
}

void draw()
{
  noFill();
  ellipse(250, 250, 200, 200);
  fill(random(0, 370), random(0, 100), random(0, 100), 50);
  ellipse(250, 250, i, j);
  if (i==0 && j==0)
    x=0;
  if (i==200&&j==200)
    x=1;
  if (x==1)
  {
    i-=20;
    j-=20;
  } else
  {
    i+=20;
    j+=20;
  }
}