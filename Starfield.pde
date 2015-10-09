//your code here
Particle[] pill= new Particle[301];
void setup()
{
  size(500, 500);
  for (int i=0; i<pill.length; i++)
  {
    pill[i]= new NormalParticle();
  }
  pill[0]=new OddballParticle();
  pill[1]=new JumboParticle();//your code here
}

void draw()
{
  fill(0);
  rect(0,0,500,500);
  for (int i=0; i<301; i++)
  {
    pill[i].show();
    pill[i].move();
    pill[i].reset();
  }
  pill[0].show();
  pill[0].move();
  pill[0].reset();
  pill[1].show();
  pill[1].move();
  pill[1].reset();
}
class NormalParticle implements Particle
{
  double myX, myY, nAngle, nSpeed;
  int nSize, nColor, x, y;
  NormalParticle() 
  {
    myX=250;
    myY=250;
    nColor=color((int)(Math.random()*255));
    nAngle=(Math.random()*2*Math.PI);
    nSpeed=Math.random()*5;
    nSize=7;
  }
  public void move()
  {
    myX=myX+Math.cos(nAngle)*nSpeed;
    myY=myY+Math.sin(nAngle)+nSpeed;
    nAngle=nAngle+0.05;
  }
  public void show()
  {
    noStroke();
    fill(nColor, nColor, nColor, nColor);
    ellipse((float)myX, (float)myY, nSize, nSize);
  }
  public void reset()
  {
    if (myX>500 || myX<0)
    {
      myX=250;
      myY=250;
      nSize=7;
      nSpeed=10;
      nAngle=(Math.random()*2);
    }
  }
}

interface Particle
{
  public void show();
  public void move();
  public void reset();//your code here
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
    nAngle=(Math.random()*2);
    nColor=color((int)(Math.random()*255));//your code here
  }
  public void move()
  {
    myX=myX+nAngle;
    myY=myY+nSpeed;
    nAngle=(int)(Math.random()*6)-2;
    nSpeed=(int)(Math.random()*6)-2;
    if (myX>500||myX<0)
    {
      myX=250;
      myY=250;
    }
  }
  public void show()
  {
    noStroke();
    fill(nColor, nColor, nColor, nColor);
    ellipse((float)myX, (float) myY, 10, 10);
  }
  public void reset()
  {
    if (myX>500 || myX<0)
    {
      myX=250;
      myY=250;
    }
    if (myY>500 || myY<0)
    {
      myX=250;
      myY=250;
    }
  }
}
class JumboParticle extends NormalParticle  //uses inheritance
{
  JumboParticle()
  {
    nSize=30;
  }
  public void reset()
  {
    if (myX>500 || myX<0)
    {
      myX=250;
      myY=250;
      nSize=30;
      nAngle=(int)(Math.random()*6)-2;
      nSpeed=(int)(Math.random()*6)-2;
    }
  }
}