
ArrayList <Vertice> lista = new ArrayList<Vertice>();
ArrayList <Ver> ver = new ArrayList<Ver>();
ArrayList<Integer> cam = new ArrayList<Integer>();


PImage image;

long[][] matrizA;
long[][] matrizNew = new long[11][11];

Vertice inicio1 = null;
Vertice final1 = null;
int mouseClick =0 ;

void setup(){
  
  image = loadImage("mapa1.jpeg");
  
  background (image);
  size(800, 399);

  createList();
  createMatrix();
  
  for(int i=0; i<matrizA.length; i++){
     for(int j=0; j<matrizA.length; j++){
       matrizNew[i][j] = matrizA[i][j];
     }
   }
}


void draw(){
  background (image);
  
   for(int i = 0; i< lista.size(); i++){
       lista.get(i).display();
   }
   
   for(int i=0; i<matrizA.length; i++){
     for(int j=0; j<matrizA.length; j++){
       if(matrizA[i][j] != 0 && matrizA[i][j] != 999999999){
          line(lista.get(i).x, lista.get(i).y, lista.get(j).x, lista.get(j).y);
       }
     }
   }
   
   ArrayList<Integer> cam1 = new ArrayList<Integer>();
     
   if(cam.size()>1){
     
     for(Integer x: cam){
       cam1.add(x);
     }
     
     int actualx;
     int actualy;
     
     actualx = lista.get(cam.get(0)).x;
     actualy = lista.get(cam.get(0)).y;
          
     cam.remove(0);
     while(cam.size()>=1){
       
       int destinox = lista.get(cam.get(0)).x;
       int destinoy = lista.get(cam.get(0)).y;
              
       strokeWeight(3);
       fill(59);
       line(actualx, actualy,destinox,destinoy);
       
       actualx = lista.get(cam.get(0)).x;
       actualy = lista.get(cam.get(0)).y;
       
       cam.remove(0);
       strokeWeight(1);
       fill(0);
     }
   }
   
   for(Integer x: cam1){
       cam.add(x);
     }
   
}

void mouseClicked(MouseEvent e){

  for(int i = 0; i< lista.size(); i++){
      lista.get(i).mouseDraggeder();
  }
  
  mouseClick++;
  
  if(inicio1 != null && final1 != null && mouseClick>0){
    CaminosMinimos ruta = new CaminosMinimos();
    println(ruta.algoritmoFloyd(matrizNew));
    camino();
  }
}

void camino(){
  int o1 = 0;
  int d1 = 0;
  
  for(int i = 0; i<lista.size();i++){
    if(inicio1.x == lista.get(i).x && inicio1.y == lista.get(i).y){
      o1 = i;
    }
    if(final1.x == lista.get(i).x && final1.y == lista.get(i).y){
      d1 = i;
    }
  }
  
  for(int i = 0; i<ver.size();i++){
    if(ver.get(i).origen == o1 && ver.get(i).destino == d1){
      cam.add(ver.get(i).origen);
      for(Integer k: ver.get(i).conexiones){
          cam.add(k);
      }
      cam.add(ver.get(i).destino);
    }
   }
}

public class Vertice {
  
  int x;
  int y;
  int r = 20;
  int colors = 255;
  
  Vertice(int _x, int _y){
    x = _x;
    y = _y;
  }
  
  void display(){
    fill(colors);
    circle(x,y,r);
  }
  
  int getX(){
    return x;
  }
  
  int getY(){
    return y;
  }
  
  void setXAY(int _x, int _y){
    x = _x;
    y = _y;
  }
  
  void changeColor(int colors1){
    
    colors = colors1;
    
    fill(colors);
  }
  
  void mouseDraggeder(){
    if((mouseX >= x && x <= mouseX+10) &&
          (y >= mouseY && y <= mouseY+10)){
            colors = 128;
            if (final1 == null && inicio1 !=null)
              final1 = new Vertice(x,y);
            
            if (inicio1 == null)
              inicio1 = new Vertice(x,y);
          }
  }  
  
}
