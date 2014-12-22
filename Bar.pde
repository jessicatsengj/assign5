class Bar{
  
  float x;
  float y;
  float len;
  float thickness;
  
  Bar(){
    y = height-30;
    len = 60;
    thickness = 10;
    life = 3;
  }
  
  void display(){
    fill(255);
    rect(x,y,len,thickness);
  }
  
  void move(){
    x = mouseX;
  }
  
  void checkLife(){
   if(ball.y>height){
    life-=1;
   } 
  }
}
