float ballx = 225;
float speedx = 4;
float increasex = 0.001;
float bally = 300;
float speedy = 1;
float increasey = 0.01;
float paddleLength=100;
float paddlex=550;
float ymouse = mouseY;
void setup(){
   size(750,600);
}

void draw() {
  if(ballx > 740) {
    speedx = -speedx;
    increasex = -increasex;
  }
   else if(ballx < 10) {
    speedx = -speedx;
    increasex = -increasex;
  }
  if(bally > 590) {
    speedy = -speedy;
    increasey = -increasey;
  }
   else if(bally < 10) {
    speedy = -speedy;
    increasey = -increasey;
   }
  speedy = speedy + increasey;
  bally = bally+speedy;
  speedx = speedx + increasex;
  ballx = ballx+speedx;
   background(020,020,020);
   ellipse(ballx,bally,40,40);
   fill(255,0,0);
   stroke(0,0,255);
   
   rect(mouseX, paddlex, 100, 20);

if (intersects(ballx, bally, mouseX , paddlex, paddleLength)){
speedy=-speedy;
increasey=-increasey;
speedx=-speedx;
increasex=-increasex;
}


}
boolean intersects(float ballX, float ballY, float paddleX, float paddleY, float paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}

