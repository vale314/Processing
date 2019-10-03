float ang = 0;
float speed = 10;
int posx = 50;
int posy = 300;
int i = 1;
 
int direction, direction2;
 
void setup() {
  background (128);
  size(800, 600);
  //  frameRate(20);
  ellipseMode(RADIUS);
  fill(#FAF312);
  noStroke();
}
 
void draw() {
  background (128);
 
  posx=posx+direction ;
  posy=posy+direction2 ;
  translate(posx, posy);
 
  if (frameCount%10==0)
    i=-i;
 
 
  if (i==1) {
    arc(50, 50, 50, 50, .51, 5.9);
  } else {
    arc(50, 50, 50, 50, .2, 6.2);
  }
}
 
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
 
      direction = -1;
      direction2 = 0;
    } else if (keyCode == RIGHT) {  
 
      direction = 1;
      direction2 = 0;
    } else if (keyCode == UP) {
 
      direction = 0;
      direction2 = -1;
    } else if (keyCode == DOWN) { 
 
      direction = 0;
      direction2 = 1;
    }
  }
}
