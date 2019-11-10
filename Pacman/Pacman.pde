PacmanClass pacman1 = new PacmanClass();
 
void setup() {
  background (128);
  size(800, 600);
}
 
void draw() {
  background (128);
  pacman1.draw();
}
 
void keyPressed() {
  pacman1.keyPressed();
}

class PacmanClass 
{
  float ang;
  float speed;
  int posx;
  int posy;
  int i;
   
  int direction, direction2;
  
  PacmanClass(){
    ang = 0;
    speed = 10;
    posx = 50;
    posy = 300;
    i = 1;
  }
  
    void draw() {
      posx=posx+direction ;
      posy=posy+direction2 ;
      translate(posx, posy);
     
      if (frameCount%10==0)
        i=-i;
     
     
      if (i==1) {
        if(keyCode == LEFT)
          arc(50, 50, 50, 50, 3.4, 8.7);
        else if(keyCode == DOWN)
          arc(50, 50, 50, 50, 2.0, 7.3);
        else if(keyCode == UP)
         arc(50, 50, 50, 50, 5.3, 10.2);
        else if(keyCode == RIGHT)
          arc(50, 50, 50, 50, .51, 5.9);
        else
          arc(50, 50, 50, 50, 5.3, 10.2);
      } else {
        if(keyCode == LEFT)
          arc(50, 50, 50, 50, 3.8, 8.3);
        else if(keyCode == DOWN)
          arc(50, 50, 50, 50, 2.3, 7.2);
        else if(keyCode == RIGHT)
          arc(50, 50, 50, 50, .2, 6.2);
        else if(keyCode == UP)
         arc(50, 50, 50, 50, 5.2, 10.5);
        else
         arc(50, 50, 50, 50, 5.2, 10.5);
      }
  }
  
  void keyPressed(){
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

}
