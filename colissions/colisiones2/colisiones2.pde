OVNI rojo;
Bloque cuadrado;

void setup(){
  size(800,800);
  
  PVector posInicial = new PVector(width/2,height/2);
  rojo = new OVNI(posInicial, 20 ,color(255,25,34));
  cuadrado = new Bloque();
}

void draw(){
  background(80);
  
  rojo.mover();
  
  chequearElImpacto();
  
  rojo.mostrar();
  cuadrado.mostrar();
}

void chequearElImpacto(){
  PVector pumace = cuadrado.puntoMasCercano(rojo);
  
  if(rojo.ColisionoConPunto(pumace))
    cuadrado.tono = color(25,255,255,70);
  else
    cuadrado.tono = color(25,25,255,70);
}
