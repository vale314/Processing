PacmanClass pacman1 = new PacmanClass();
//cubitoClass cubito1 = new cubitoClass(); 

Rectangle[] rects = new Rectangle[50];
ArrayList<Perlas> perlas;

boolean colission = false; 
boolean inicial = true;

import processing.sound.*;
SoundFile pacmanSound;
SoundFile pacmanSoundIntro;
                       

void setup() {
  perlas = new ArrayList<Perlas>();
  pacmanSound = new SoundFile(this, "pacman.mp3");
  pacmanSoundIntro = new SoundFile(this, "pacman_intro.mp3");
  
  background (255);
  size(800, 600);
  
  pacmanSound.loop();
  pacmanSoundIntro.play();
  
  for (int i=0; i<rects.length; i++) {
    float x = int(random(50,width-50)/50) * 50;
    float y = int(random(50,height-50)/50) * 50;
    rects[i] = new Rectangle(x,y, 40,40);
    perlas.add(new Perlas(x+50,y+50, 40/2,40/2));
  }
  
}
 
void draw() {
  
  if(colission)
    pacmanSound.stop();
  else{
    if(!pacmanSound.isPlaying())
        pacmanSound.play();
  }
  
  background (128);
  //cubito1.incial();
  
  // go through all rectangles...
  for (Rectangle r : rects) {
    r.checkCollision(pacman1);  // check for collision
    r.display();               // and draw
  }
  
  for (int i=perlas.size()-1; i>=0; i--){
    perlas.get(i).display();
    
    if(perlas.get(i).checkCollision(pacman1))
      perlas.remove(i);
  }

  // update circle’s position and draw
  pacman1.keyPressed();
  
  pacman1.display();
  
}
 
class PacmanClass 
{
  float ang;
  float speed;
  int posx;
  int posy;
  int i;
  int r;
   
  int direction, direction2;
  
  PacmanClass(){
    ang = 0;
    posx = 50;
    posy = 300;
    i = 1;
    r = 50;
  }
  
  
  // draw
  void display() {
    
    
    if(keyPressed){
      colission = false;
    }
       
    if(colission){
        direction = 0;
        direction2 = 0;
    }
      
 
      
      if(posx <= -33){
        direction =0;
        
        if (keyCode == RIGHT) {  
     
          direction = 1;
          direction2 = 0;
        }
      }
      if(posy <= -33){
        direction2 =0;
        
        if (keyCode == DOWN) {  
     
          direction = 0;
          direction2 = 1;
        }
      }
      if(posx >= width -65){
        direction =0;
        
        if (keyCode == LEFT) {  
     
          direction = -1;
          direction2 = 0;
        }
      }
      if(posy >= height -65){
        direction2 =0;
        
        if (keyCode == UP) {  
     
          direction = 0;
          direction2 = -1;
        }
      }
      
      translate(posx, posy);
      
      posx=posx+direction ;
      posy=posy+direction2 ;
      
      
      
      if (frameCount%10==0)
        i=-i;
     
      fill(#FFFF00);    
      
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


class Rectangle {
  float x, y;            // position
  float w, h;            // size
  boolean hit = false;   // is it hit?

  Rectangle (float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }

  // check for collision with the circle using the
  // Circle/Rect function we made in the beginning
  void checkCollision(PacmanClass c) {
    hit = circleRect(c.posx+50,c.posy+50,c.r/2, x,y,w,h);
  }

  // draw the rectangle
  // if hit, change the fill color
  void display() {
    if (hit){
      fill(255,150,0);
      colission = true;
    }
    else{
      fill(0,150,255);
    }
    
    noStroke();
    rect(x,y, w,h);
  }
}

class Perlas {
  float x, y;            // position
  float w, h;            // size
  boolean hit = false;   // is it hit?

  Perlas (float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }

  // check for collision with the circle using the
  // Circle/Rect function we made in the beginning
  boolean checkCollision(PacmanClass c) {
    hit = circleRect(c.posx+50,c.posy+50,c.r/2, x,y,w,h);
    return hit;
  }

  // draw the rectangle
  // if hit, change the fill color
  void display() {
    if (hit){
      fill(255,150,0);
      colission = true;
    }
    else
      fill(0,150,255);
    
    noStroke();
    rect(x,y, w,h);
  }
}

// CIRCLE/RECTANGLE
boolean circleRect(float cx, float cy, float radius, float rx, float ry, float rw, float rh) {

  // temporary variables to set edges for testing
  float testX = cx;
  float testY = cy;

  // which edge is closest?
  if (cx < rx)         testX = rx;      // compare left edge
  else if (cx > rx+rw) testX = rx+rw;   // right edge
  if (cy < ry)         testY = ry;      // top edge
  else if (cy > ry+rh) testY = ry+rh;   // bottom edge

  // get distance from closest edges
  float distX = cx-testX;
  float distY = cy-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the radius, collision!
  if (distance <= radius) {
    return true;
  }
  return false;
}
