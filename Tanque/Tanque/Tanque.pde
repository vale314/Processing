Tanque tanque = new Tanque();


void setup(){
  background (255);
  size(800, 600);
}

void draw(){
  
  background(255);
   
  tanque.keyPressed();
  
  tanque.display();
}

class Bolita{
  
  int posx;
  int posy;
  
  Bolita(int _posx, int _posy){
    posx = _posx;
    posy = _posy;
  }
  
}

class Tanque{
  
  int posx;
  int posy;

  int direction, direction2;
  
  int envio;
  
  
  ArrayList<Bolita> bolitas[];
  
  Tanque(){
    posx = 50;
    posy = 500;
    envio = 0;
  }
  
  void display(){
    if(posx <= -33){
        direction =0;
        
        if (keyCode == RIGHT) {  
     
          direction = 1;
        }
      }
      if(posx >= width -65){
        direction =0;
        
        if (keyCode == LEFT) {  
     
          direction = -1;
        }
      }
      
      posx=posx+direction ;
      posy=posy+direction2 ;
      
      if(keyCode == UP && envio == 1){
        
        bolitas.add(new Bolita(posx,posy));
        
        
        direction2 = -1;
        
        circle(posx,posy,10);
        
        envio=0;
      }
   
      
      rect(posx,500, 50,50);
  }
  
  void keyPressed(){
      
    if (key == CODED) {
      if (keyCode == LEFT) {
        direction = -1;
      } else if (keyCode == RIGHT) {  
   
        direction = 1;
      } else if(keyCode == UP){
        envio = 1;
      }
    }  
  }
  
}
