HBox h1 = new HBox(400,300,10,10,1);
HBox h2 = new HBox(400,300,5,5,1);

void setup() {
  size(800, 600);
}

void draw(){
  background(0);
  h1.draw();
  h2.draw();
}

class HBox{
   int x; int y; int xspeed; int yspeed; float m;
  
    HBox(int x1,int y1,int xspeed1,int yspeed1, float m1){
      x = x1;
      y = y1;
      xspeed = xspeed1;
      yspeed = yspeed1;
      m = m1;
    }
  
    void draw() {
      pushMatrix();
      translate(x, y);
      
      
      matriz(m);
      
      x = x + xspeed;
      y = y + yspeed;
    
      if(x + 80 == width || x == 0){
        xspeed = xspeed * -1;
        m = random(6);
        matriz(m);
      }
    
      if(y + 60 == height || y == 0){
        yspeed = yspeed * -1;
        m = random(6);
        matriz(m);
      }
      popMatrix();
    }
    
    void matriz(float m){
       
       beginShape();
       
       for (float theta = 0; theta < 2 * PI; theta += 0.01){
          float rad = r(theta,
            1, // a //ancho
            1, // b //alto
            m, // m
            1, // n1
            1, // n2
            1// n3);
            );
          
          float x = rad * cos(theta) * 50;
          float y = rad * sin(theta) * 50;
          vertex(x,y); 
          print(x);
         }
       
       endShape();
    }


    float r(float theta, float a, float b, float m, float n1, float n2, float n3){
     return pow(pow(abs(cos(m * theta/4.0) / a), n2) + 
            pow(abs(sin(m * theta/4.0) / b), n3), -1.0/n1) ; 
    }
  }
