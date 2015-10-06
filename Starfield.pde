//your code here
Particle[] pill= new Particle[301];

void setup()
{
  size(500, 500);
  background(0);
  for (int i=0; i<298; i++)
  {
    pill[i]= new NormalParticle();
  }
  pill[299]=new OddballParticle();
  pill[300]=new JumboParticle();//your code here
}
void draw()
{
  for (int i=0; i<301; i++)
  {
    pill= new normalParticle();
    pill[i].show();
    pill[i].move();//your code here
  }
}
class NormalParticle implements Particle
{
  double myX, myY, nAngle, nSpeed;
  int nSize, nColor;
  NormalParticle() 
  {
    myX=250;
    myY=250;
    nColor=color((int)(Math.random()*255));
    nAngle=Math.random()*10;
    nSpeed=Math.random()*5;
  }
  void move()
  {
    myX=Math.cos(nAngle)*nSpeed;
    myY=Math.sin(nAngle)+nSpeed;
    nAngle=nAngle+0.05;
  }
  void show()
  {
    fill(nColor, nColor, nColor, nColor);
    ellipse(x, y, nSize, nSize);
  }
}	//your code here

interface Particle
{
  public void show();
  public void move();//your code here
}
class OddballParticle implements Particle //uses an interface
{
  double myX, myY, nSpeed, nAngle;
  int nColor;
  OddballParticle()
  {
    myX=250;
    myY=250;
    nSpeed=10;
    angle=(Math.random()*2);
    nColor=color((int)(Math.random()*255));
  //your code here
  }
}
class JumboParticle extends Particle  //uses inheritance
{
  JumboParticle()
  {
    nSize=30;
  }//your code here
}

