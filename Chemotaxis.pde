 Photon[] sunlight;
void setup() {
  size(2000, 800);
  background(0);
  sunlight = new Photon[300];
  for(int i = 0; i < sunlight.length; i++) {
    sunlight[i] = new Photon();
  }
}
void draw() {
  fill(0, 0, 0, 50);
  stroke(0, 0, 0, 5);
  rect(0, 0, 2000, 800);
  fill(0, 0, 0, 200);
  stroke(253, 184, 19);
  strokeWeight(5);
  circle(400, 400, 300);
  for(int i = 0; i < sunlight.length; i++) {
    sunlight[i].show();
    sunlight[i].move();
  }
  fill(0, 0, 200);
  stroke(0);
  circle(1800, 400, 50);
  fill(0, 200, 0);
  stroke(0, 200, 0);
  ellipse(1800, 390, 15, 20);
  ellipse(1810, 410, 15, 20);
  ellipse(1780, 400, 10, 25);
}
void mouseClicked() {
  fill(0);
  rect(0, 0, 2000, 800);
  for(int i = 0; i < sunlight.length; i++) {
    sunlight[i] = new Photon();
  }
}
class Photon {
  int myX;
  int myY;
  int lightColor;
  double distanceFromSun;
  Photon() {
    lightColor = color(253, 184, 19);
    myX = 400;
    myY = 400;
  }
  void show() {
    fill(lightColor);
    stroke(lightColor);
    strokeWeight(1);
    circle(myX, myY, 5);
  }
  void move() {
    distanceFromSun = Math.hypot(400 - myX, 400 - myY);
    if(distanceFromSun > 150) {
      myX = myX + (myX - 400)/20;
      myY = myY + (myY - 400)/20;
      return;
    }else
    if(myX > 500) {
      myX += (int)(Math.random()*10 - 3);
      myY += (int)(Math.random()*10 - 5);
    }else
    if(myX < 300) {
      myX += (int)(Math.random()*10 - 7);
      myY += (int)(Math.random()*10 - 5);
    }else
    if(myY > 500) {
      myX += (int)(Math.random()*10 - 5);
      myY += (int)(Math.random()*10 - 3);
    }else
    if(myY < 300) {
      myX += (int)(Math.random()*10 - 5);
      myY += (int)(Math.random()*10 - 7);
    }else {
    myX += (int)(Math.random()*10 - 5);
    myY += (int)(Math.random()*10 - 5);
    }
  }
}
