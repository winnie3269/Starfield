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
  background(0);
  for (int i=0; i<pill.length; i++)
  {
    pill[i].move();
    pill[i].show();
    pill[i].reset();
  }
  pill[1].move();
  pill[1].show();
  pill[1].reset();
  pill[0].move();
  pill[0].show();
  pill[0].reset();
}
class NormalParticle implements Particle
{
  double myX, myY, nAngle, nSpeed,a,s;
  int nColor, nSize;
  NormalParticle() 
  {
    myX=250;
    myY=250;
    nColor=color((int)(Math.random()*255)+50, 0, (int)(Math.random()*255)+50);
    nAngle=(Math.random()*2*Math.PI);
    nSpeed=Math.random()*2;
    nSize=7;
  }
  public void move()
  {
    a=Math.cos(nAngle)*nSpeed;
    s=Math.sin(nAngle)*nSpeed;
    myX=myX-a;
    myY=myY-s;
    if (myX>500 || myX<0)
    {
      myX=250;
      myY=250;
    }
  }
  public void show()
  {
    noStroke();
    fill(nColor);
    ellipse((float)myX, (float)myY, nSize, nSize);
  }
  public void reset()
  {
    if (myX>500 || myX<0)
    {
      myX=250;
      myY=250;
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
    nColor=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));//your code here
  }
  public void move()
  {
    myX=myX+nAngle;
    myY=myY+nSpeed;
    nAngle=(int)(Math.random()*6)-2;
    nSpeed=(int)(Math.random()*6)-2;
  }
  public void show()
  {
    noStroke();
    fill(nColor);
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
    nSize=50;
    nColor=color(255);
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