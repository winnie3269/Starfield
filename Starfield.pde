//your code here
void setup()
{
  	//your code here
}
void draw()
{
	//your code here
}
class NormalParticle
{
  int nSize;
  nSize=(int)(Math.random()*6);
  double x, y, nAngle, nColor, nSpeed;
  void move()
  {
    Math.cos(nAngle)*nSpeed=x;
    Math.sin(nAngle)+nSpeed=y;
  }
  void show()
  {
    nColor=(int)(Math.random()*255);
    fill(nColor,nColor,nColor,nColor);
    ellipse(x,y, nSize,nSize);
  }	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}