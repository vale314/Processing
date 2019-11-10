class Bloque {
  PVector pos = new PVector(width/2, height/2);
  int radio = 100;
  color tono = color(25, 25, 255, 70);
  
  Bloque(){
  }
  
  void mostrar(){
    rectMode(RADIUS);
    fill(tono);
    rect(pos.x,pos.y,radio,radio);
  }
  
  PVector puntoMasCercano(OVNI circulo){
    PVector pmc = new PVector(0,0);
    
    if (circulo.pos.x > pos.x+radio){
      //La pelota esta mas a la derecha
      pmc.x = pos.x+radio;
    }  if(circulo.pos.x < pos.x-radio){
      //La pelota esta mas a la izquierda
      pmc.x = pos.x-radio;
    }if ((circulo.pos.x>=pos.x-radio)&&
        (circulo.pos.x<= pos.x+radio)){
          pmc.x = circulo.pos.x;
          //La pelota dentro de los limites verticales
        }
    if (circulo.pos.y > pos.y+radio){
      //La pelota esta mas abajo
      pmc.y = pos.y+radio;
    }  if(circulo.pos.y < pos.y-radio){
      //La pelota esta mas arriba
      pmc.y = pos.y-radio;
    }if ((circulo.pos.y>=pos.y-radio)&&
        (circulo.pos.y<= pos.y+radio)){
          pmc.y = circulo.pos.y;
          //La pelota dentro de los limites verticales
        }    
    fill(0);
    ellipse(pmc.x, pmc.y, 20, 20);
    return pmc;
  }
  
}
