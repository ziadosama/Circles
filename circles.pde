float  i=20, j=20;
int io;

float x = 250;
float y = 250;
float t;

void setup()
{
  size(500, 500);
  color(HSB);
  background(255);
  smooth();
  noStroke();
  frameRate(10);
  blendMode(BLEND);
}

void draw()
{
  if(frameCount%10==0)
    fill(random(0, 370), random(0, 100), random(0, 100));
  pushMatrix();
  translate(x, y);
  rotate(radians(frameCount *2 % 360));
  rect(0, 0, 2, 150);
  popMatrix();
  noFill();
  ellipse(250, 250, 200, 200);
  fill(random(0, 370), random(0, 100), random(0, 100), 50);
  ellipse(250, 250, i, j);
  if (i==0 && j==0)
    io=0;
  if (i==200&&j==200)
    io=1;
  if (io==1)
  {
    i-=20;
    j-=20;
  } else
  {
    i+=20;
    j+=20;
  }
  //saveFrame("F:\\design\\processing projects\\Processing3\\circles\\out\\screen####.jpg");
}
