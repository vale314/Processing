PImage a;
boolean state = true;
boolean pstate = true;
int time = -1;
boolean aw = true;

void setup(){
  size(800,600);
  background(255);
  frameRate(10);
  a = loadImage("a.png");
  

}


void draw(){
  if(aw){
    linea_lado_extremo(50, 51, 521,504);
    aw=false;
  }
}

void linea_lado_extremo(float x1, float y1, float x2, float y2){
  
  float longitud;
  float dx;
  float dy;
  float inc_x;
  float inc_y;
  int i = 1;
  
  dx = (x2 - x1);
  dy = (y2 - y1);
  
  if(abs(dx) >= abs(dy)){
    longitud = abs(dx);
  }else{
    longitud = abs(dy);
  }
  
  inc_x = dx / longitud;
  inc_y = dy / longitud;
  
  for(int k = 0; k < longitud; k++){
      x1 = x1 + inc_x;
      y1 = y1 + inc_y;
  
      //point(round(x1),round(y1));
      
      if(k%3 == 0)
        image(a, round(x1), round(y1));
        

  }
      //print("x: "+round(x1)+" y: "+round(y1) + "\n");
      

}


void myDelay(int ms)
{
   try
  {   
    Thread.sleep(ms);
  }
  catch(Exception e){}
}
