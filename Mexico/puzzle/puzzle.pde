
PImage image;
PImage image1;
PImage image2;
PImage image3;
PImage image4;
PImage image5;
PImage image6;
PImage image7;
PImage image8;
PImage image9;
PImage image11;
PImage image12;
PImage image13;
PImage image14;
PImage image15;
PImage image16;
PImage image17;
PImage image18;
PImage image19;
PImage image10;
PImage image21;
PImage image22;
PImage image23;
PImage image24;
PImage image25;
PImage image26;
PImage image27;
PImage image28;
PImage image29;
PImage image20;
PImage image31;
PImage image32;

PImage image33;
PImage image30;
PImage image34;



float x = 100;
float y = 100;

ArrayList <Image> imagesA;
ArrayList <Seccion> seccion;

int countEstadosMexico1 = 0;

void setup(){
  imagesA = new ArrayList<Image>();
  seccion = new ArrayList<Seccion>();
  
  size(674,490);
  image = loadImage("./img/mexico.jpg");  
  
  image1 = loadImage("./img/aguascalientes.png");
  image2 = loadImage("./img/baja_california_norte.png");
  image3 = loadImage("./img/baja_california_sur.png");
  image4 = loadImage("./img/campeche.png");
  image5 = loadImage("./img/chiapas.png");
  image6 = loadImage("./img/chihuahua.png");
  image7 = loadImage("./img/ciudad_de_mexico.png");
  image8 = loadImage("./img/cohauila.png");
  image9 = loadImage("./img/colima.png");
  image10 = loadImage("./img/durango.png");
  image11 = loadImage("./img/estado_de_mexico.png");
  image12= loadImage("./img/guanajuato.png");
  image13 = loadImage("./img/guerrero.png");
  image14 = loadImage("./img/hidalgo.png");
  image15 = loadImage("./img/jalisco.png");
  image16 = loadImage("./img/michoacan.png");
  image17 = loadImage("./img/morelos.png");
  image18 = loadImage("./img/nayarit.png");
  image19 = loadImage("./img/nuevo_leon.png");
  image20 = loadImage("./img/oaxaca.png");
  image21 = loadImage("./img/puebla.png");
  image22 = loadImage("./img/queretaro.png");
  image23 = loadImage("./img/quintana_roo.png");
  image24 = loadImage("./img/san_luis_potosi.png");
  image25 = loadImage("./img/sinaloa.png");
  image26 = loadImage("./img/sonora.png");
  image27 = loadImage("./img/tabasco.png");
  image28 = loadImage("./img/tamaulipas.png");
  image29 = loadImage("./img/tlaxcala.png");
  image30 = loadImage("./img/veracruz.png");
  image31 = loadImage("./img/yucatan.png");
  image32 = loadImage("./img/zacatecas.png");
  
  imagesA.add(new Image(image1,1));
  imagesA.add(new Image(image2,2));
  imagesA.add(new Image(image3,3));
  imagesA.add(new Image(image4,4));
  imagesA.add(new Image(image5,5));
  imagesA.add(new Image(image6,6));
  imagesA.add(new Image(image7,7));
  imagesA.add(new Image(image8,8));
  imagesA.add(new Image(image9,9));
  imagesA.add(new Image(image10,10));
  imagesA.add(new Image(image11,11));
  imagesA.add(new Image(image12,12));
  imagesA.add(new Image(image13,13));
  imagesA.add(new Image(image14,14));
  imagesA.add(new Image(image15,15));
  imagesA.add(new Image(image16,16));
  imagesA.add(new Image(image17,17));
  imagesA.add(new Image(image18,18));
  imagesA.add(new Image(image19,19));
  imagesA.add(new Image(image20,20));
  imagesA.add(new Image(image21,21));
  imagesA.add(new Image(image22,22));
  imagesA.add(new Image(image23,23));
  imagesA.add(new Image(image24,24));
  imagesA.add(new Image(image25,25));
  imagesA.add(new Image(image26,26));
  imagesA.add(new Image(image27,27));
  imagesA.add(new Image(image28,28));
  imagesA.add(new Image(image29,29));
  imagesA.add(new Image(image30,30));
  imagesA.add(new Image(image31,31));
  imagesA.add(new Image(image32,32));

  
  seccion.add(new Seccion(312, 280, 20, 1));
  seccion.add(new Seccion(69, 81, 20, 2));
  seccion.add(new Seccion(124, 195, 20, 3));
  seccion.add(new Seccion(575, 333, 20, 4));
  seccion.add(new Seccion(540, 399, 20, 5));
  seccion.add(new Seccion(239, 126, 20, 6));
  seccion.add(new Seccion(385, 335, 20, 7));
  seccion.add(new Seccion(327, 161, 20, 8));
  seccion.add(new Seccion(315, 275, 20, 9));
  seccion.add(new Seccion(262, 218, 20, 10));
  seccion.add(new Seccion(375, 340, 20, 11));
  seccion.add(new Seccion(347, 304, 20, 12));
  seccion.add(new Seccion(364, 375, 20, 13));
  seccion.add(new Seccion(391, 312, 20, 14));
  seccion.add(new Seccion(290, 307, 20, 15));
  seccion.add(new Seccion(325, 341, 20, 16));
  seccion.add(new Seccion(383, 351, 20, 17));
  seccion.add(new Seccion(268, 280, 20, 18));
  seccion.add(new Seccion(363, 202, 20, 19));
  seccion.add(new Seccion(451, 387, 20, 20));
  seccion.add(new Seccion(409, 335, 20, 21));
  seccion.add(new Seccion(372, 305, 20, 22));
  seccion.add(new Seccion(626, 314, 20, 23));
  seccion.add(new Seccion(363, 268, 20, 24));
  seccion.add(new Seccion(214, 216, 20, 25));
  seccion.add(new Seccion(132, 107, 20, 26));
  seccion.add(new Seccion(532, 362, 20, 27));
  seccion.add(new Seccion(392, 213, 20, 28));
  seccion.add(new Seccion(408, 334, 20, 29));
  seccion.add(new Seccion(451, 326, 20, 30));
  seccion.add(new Seccion(605, 295, 20, 31));
  seccion.add(new Seccion(317, 262, 20, 32));

  noStroke();  
}

void draw(){
  
  background(image);
  for(Image i: imagesA){
    for(Seccion j: seccion ){
      if(i.checkCollision(j) && i.city == j.city && ! i.confirm){
        //fill(255);
        i.confirm = true;
        countEstadosMexico1++;
      }
       else
         fill(100);
     j.display();
    }
    i.draw();
  }
  
  fill(100);

  if(countEstadosMexico1 >= 32){
    textSize(32);
    String TEXTB = "Tu Haz Ganado";
    text(TEXTB, 175, 424);
  }else{
    String TEXTR = "Estados: " + countEstadosMexico1;
    text(TEXTR, 404, 458);
  }
  
}

void mouseDragged(){
  for(Image i: imagesA){
    if(i.mouseDragged()){
      break;
    }
  }

}

void mousePressed(){
  for(Image i: imagesA){
    if(i.mousePressed()){
      break;
    }
  }
}


class Seccion{
  int posx;
  int posy;
  int r;
  int city;
  
  Seccion(int _posx, int _posy, int _r, int _city){
    posx = _posx;
    posy = _posy;
    r = _r;
    city = _city;
  }
  
  void display(){
    //circle(posx,posy,r);
  }
}

class Image {
   int x = 0;
   int y = 0;
   PImage image;
   boolean over;
   boolean clicked;
   int city = 0;
   boolean confirm = false;
   
   Image(PImage _image, int _dest){
     image = _image;
     
     city = _dest;
   }
   
  
  void draw(){
    
    image(image, x, y);

    if (mouseX > x && mouseX < image.width + x && 
        mouseY > y && mouseY < image.height + y) {
        //fill(100);
        //rect((image.width/2) + x, (image.height/2) + y, 10, 10);
    
        over = true; 
        
      }else{
        over = false;
      }
  }
  
  boolean checkCollision(Seccion c) {
    boolean colision = circleRect(c.posx,c.posy,c.r/2,(image.width/2) + x,(image.height/2) + y,10,10);
    return colision;
  }
  
   boolean mousePressed(){
    if(over && !confirm){
      clicked = true;
    }else
      clicked = false;
    return clicked;
  }
  
  boolean mouseDragged(){
    if(clicked){
      x = mouseX;
      y = mouseY;
    }
    return clicked;
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
