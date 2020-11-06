Particle[] epilepsy = new Particle[5000];
////////////////////////////////////////////////////
void setup()
{
  size (1000,1000);
for (int i = 0; i < epilepsy.length; i++)
  {
    epilepsy[i] = new circleParticle();
  }
    epilepsy[0] = new OddballParticle();
}
////////////////////////////////////////////////////
void draw()
{
  background(0);
  for (int i = 0; i < epilepsy.length; i++)
  {
    epilepsy[i].show();
    epilepsy[i].move();
  }
}
////////////////////////////////////////////////////
class circleParticle implements Particle
{
  double myX, myY, mySpeed, myDir;
  int myColor;
  circleParticle()
  {
    myY = 300;
    myX = 500;
    mySpeed = Math.random()*10;
    myDir = Math.random()*5*Math.PI;
    myColor = color(random(255), random(255), random(255));
  }
  public void move()
  {
    myX = myX + mySpeed * Math.cos(myDir);
    myY = myY + mySpeed * Math.sin(myDir);
  }
  public void show()
  {
    fill((int)(Math.random()*256) + 1, (int)(Math.random()*256) + 1, (int)(Math.random()*256) + 1);
    ellipse((float)myX, (float)myY, 10, 10);
  } 
}
/////////////////////////////////////////////////////
interface Particle
{
  public void show();
  public void move();
}
/////////////////////////////////////////////////////
class OddballParticle implements Particle 
{
  double myX, myY;
  int myColor;
  OddballParticle()
  {
    myY = mouseY;
    myX = mouseX;
    myColor = (int)(Math.random()*256) + 1;
  }
  public void move()
  {
    mouseX = mouseX + (int)(Math.random()*9) - 4;
    mouseY = mouseY + (int)(Math.random()*9) - 4;
  }
  public void show()
  {
    fill((int)(Math.random()*256) + 1, (int)(Math.random()*256) + 1, (int)(Math.random()*256) + 1);
    triangle(mouseX, mouseY, mouseX + 40, mouseY, mouseX + 20, mouseY + 40);
  }
}
