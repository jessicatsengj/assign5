class Ball{

float x;  
float y;
float xSpeed;
float ySpeed;
boolean shoot;

Ball(){
  
  y= height - bar.thickness*7/2;
  xSpeed = 10;
  ySpeed = 10;
  shoot = false;
}

void display(){
  ellipse(x,y,10,10);  
}
void move(){
  x= bar.x + bar.len/2;
}

void shootBall(){
  if(shoot){
  x+=xSpeed;
  y-=ySpeed; 
  }
  if (mousePressed){
   shoot = true; 
  }
  }
  
  
  
void checkEdges(){
  if(x>width || x<0 && y<height){
    xSpeed*=-1;
  }
  if(y<0){
    ySpeed*=-1;
  }
  if(x>bar.x && x<bar.x+bar.len && y>bar.y){
    ySpeed*=-1;
  }
 
}
}
