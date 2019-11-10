Tanque tanque = new Tanque();
ArrayList<Cuadro> cuadroA;
ArrayList<Bolita> bolitas;
boolean state = true;
boolean pstate = true;
boolean hit = false;
int time = -1;
int balas = 0;
int balasT = 0;


void setup(){
  bolitas = new ArrayList <Bolita>();
  cuadroA = new ArrayList<Cuadro>();
  
  background (255);
  size(800, 600);
  
  cuadroA.add(new Cuadro(50, 50));
  cuadroA.add(new Cuadro(700, 50));
  
}

void draw(){
  
  background(255);
     
  tanque.keyPressed();
  
  tanque.display();
  
  for (int i=cuadroA.size()-1; i>=0; i--){
    cuadroA.get(i).display();
    
    for(int i2=bolitas.size()-1; i2>=0; i2--){
      if(cuadroA.get(i).checkCollision(bolitas.get(i2))){
        bolitas.remove(i2);
        balasT++;
      }else if(bolitas.get(i2).posy == 0){
        bolitas.remove(i2);
      }
      
    }
  }
   fill(1, 6, 167);
   textSize(32);
   String TEXTB = "Balas "+ balas + "\n" + "BalasT " + balasT;
   text(TEXTB,balas, 250, 250);
   
}

class Bolita{
  
  int posx;
  int posy;
  int direction2;
  
  Bolita(int _posx, int _posy){
    posx = _posx;
    posy = _posy;
  }
  
  void display(){
    direction2 = -1;
    
    posy=posy+direction2 ;
    
    circle(posx,posy,10);
  }
  
}

class Cuadro {
  int x;
  int y;
  
  
  Cuadro(int _x, int _y){
    x = _x;
    y = _y;
  }
  
  boolean checkCollision(Bolita c) {
    hit = circleRect(c.posx,c.posy,10/2, x,y,50,50);
    return hit;
  }

  void display() {
    rect(x,y, 50,50);
  }
}

class Tanque{
  
  int posx;
  int posy;

  int direction, direction2;
  
  int envio;
  
  Tanque(){
    posx = 50;
    posy = 500;
    envio = 0;
  }
  
  void display(){
    if(posx <= 0){
        direction =0;
        
        if (keyCode == RIGHT) {  
     
          direction = 1;
        }
      }
      if(posx >= width -50
      ){
        direction =0;
        
        if (keyCode == LEFT) {  
     
          direction = -1;
        }
      }
      
      posx=posx+direction ;
      
      for (int i=0; i<bolitas.size(); i++) {
        bolitas.get(i).display();
      }
      
      rect(posx,500, 50,50);
  }
  
  void keyPressed(){
      
    state = keyPressed;
    if( millis() > time && time != -1 ){
      state = false;
    }
    if(state != pstate){
      if(keyCode == UP && keyPressed){
        bolitas.add(new Bolita(posx,posy));
        balas++;
      }
      if( state ){
        time = millis() + 1000;
      } else {
        time = -1;
      }
    }
    pstate = state; 
    
    if (key == CODED) {
       if (keyCode == RIGHT) {  
   
        direction = 1;
      } else if (keyCode == LEFT) {
        direction = -1;
      }
    }  
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
