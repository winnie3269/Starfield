//your code here
Particle[] pill= new Particle[num];
void setup()
{
  size(500, 500);
  background(0);
  for (int i=0; i<num; i++)
  {
    pill[i]= new Particle();
  }

  //your code here
}
void draw()
{
  for (int i=0; i<num; i++)
  {
    pill[i].show();
    pill[i].move();//your code here
  }
  class NormalParticle implements Particle
  {
    double myX, myY, nAngle, nSpeed;
    int nSize, nColor;
    NormalParticle() 
    {
      myX=250;
      myY=250;
      nColor=(int)(Math.random()*255);
      nAngle=Math.random()*10;
      nSpeed=Math.random()*5;
    }
    void move()
    {
      x=Math.cos(nAngle)*nSpeed;
      y=Math.sin(nAngle)+nSpeed;
    }
    void show()
    {
      fill(nColor, nColor, nColor, nColor);
      ellipse(x, y, nSize, nSize);
    }
  }	//your code here
}
interface Particle
{
  public void show();
  public void move();//your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}