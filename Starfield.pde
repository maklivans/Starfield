int size = 500;
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
  background(192);
  while (i>=0) {
    aBunch[i].show();
    aBunch[i].move();
    i--;
  }
  i = aBunch.length-1;
}
class Particle
{
  double myX, myY, mySpeed, myAngle, myColor;
  Particle() {
    myX = size*0.5;
    myY = size*0.5;
    mySpeed = Math.random()+1;
    myAngle = Math.random()*2*PI;
    myColor = col((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    
  }
  void move() {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
    mySpeed+=0.001;
    if (myX>=size+10||myX<=-10) {
      myX = size*0.5;
      myY = size*0.5;
      mySpeed = Math.random()*3+1;
     } else if (myY>=size+10||myY<=-10) {
      myX = size*0.5;
      myY = size*0.5;
      mySpeed = Math.random()+1;
     }
  }
  void show() {
  	fill(myColor);
    ellipse((float)myX,(float)myY,10,10);

  }
}
 
class OddballParticle //inherits from Particle
{
  //your code here
}


