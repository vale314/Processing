class OVNI {

  PVector pos, vel;
  int radio;
  color tono;
  
  OVNI(PVector P_pos, int P_radio, color P_tono){
    pos = P_pos;
    radio = P_radio;
    vel = new PVector(random(-7 , 7), random(-7 , 7));
    tono = P_tono;
  }
  
  void mostrar(){
    noStroke();
    fill(tono);
    ellipseMode(RADIUS);
    ellipse(pos.x,pos.y,radio,radio);
  }
  
  void mover(){
    pos.add(vel);
    
    if(pos.x < 0 || pos.x>width){
      pos.x -= vel.x;
      vel.x *= -1;
    }
    if(pos.y < 0 || pos.y>height){
      pos.y -= vel.y;
      vel.y *= -1;
    }
  }
  
  boolean ColisionoConPunto(int P_XPunto, int P_YPunto){
    
    float d = dist(pos.x, pos.y, P_XPunto, P_YPunto);
    if( d>radio) return false;
    else return true;
  }
  
  boolean ColisionoConPunto(PVector Punto){
    
    float d = dist(pos.x, pos.y, Punto.x, Punto.y);
    if(d>radio) return false;
    else return true;
  }
  
  boolean ColisionoConOtro(OVNI otro){
    float sumaRadios = radio + otro.radio;
    float dist = dist(pos.x, pos.y, otro.pos.x, otro.pos.y);
    
    if(dist > sumaRadios) return false;
    else return true;
  }
}
