int size1 = 500;
Particle [] aBunch = new Particle [100];
int i = aBunch.length-1;
void setup()
{
  size(500,500);
  while (i>=0) {
    aBunch[i] = new Particle();
    i--;
  }
  i = aBunch.length-1;
}
void draw()
{
  background(0);
  while (i>=0) {
    aBunch[i].show();
    aBunch[i].move();
    i--;
  }
  i = aBunch.length-1;
}
class Particle
{
  double myX, myY, mySpeed, myAngle,mySize;
  color myColor;
  Particle() {
    myX = size1*0.5;
    myY = size1*0.5;
    mySpeed = Math.random()+1;
    myAngle = Math.random()*2*PI;
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    mySize = 1;
  }
  void move() {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
    mySpeed+=0.001;
    mySize+=0.025;
    if (myX>=size+10||myX<=-10) {
      myX = size1*0.5;
      myY = size1*0.5;
      mySize = 1;
      mySpeed = Math.random()*3+1;
     } else if (myY>=size+10||myY<=-10) {
      myX = size1*0.5;
      myY = size1*0.5;
      mySize = 1;
      mySpeed = Math.random()+1;
     }
  }
  void show() {
  	fill(255);
    ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);

  }
}
 
class OddballParticle //inherits from Particle
{
  //your code here
}


