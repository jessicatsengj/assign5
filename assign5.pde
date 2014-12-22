Bar bar;
Ball ball;
Brick []brick;

//Game Status
final int GAME_START   = 0;
final int GAME_PLAYING = 1;
final int GAME_SHOOT   = 2;
final int GAME_WIN     = 3;
final int GAME_LOSE    = 4;

int status;
int life=3;
boolean shoot;


void setup(){
  status = GAME_START;
  size(600,500);
  background(0);
  bar = new Bar();
  ball = new Ball();
  brick = new Brick[50];
  for(int i=0; i<brick.length; i++){
   brick[i]= new Brick(); 
  }
}

void draw(){
  background(0);
  statusCtrl();
  switch(status) {

  case GAME_START:
    printText();
    break;

  case GAME_PLAYING:
    background(0);
    bar.display();
    bar.move();
    ball.display();
    ball.move();
    for(int i=0; i<brick.length; i++){
    brick[i].display();
    }
    drawLife();
   // bar.checkLife();
    break;
    
  case GAME_SHOOT: 
    background(0);
    bar.display();
    bar.move();
    ball.display();
    ball.shootBall();
    ball.checkEdges();
    for(int i=0; i<brick.length; i++){
    brick[i].display();
    }
    drawLife();
    //bar.checkLife();
    
    if(ball.y>height){
     
      ball.x= mouseX + bar.len/2;
      ball.move();
      ball.y = height - bar.thickness*7/2;
      ball.shoot = false;
      life-=1;
    }
    if(life == 0){
     status = GAME_LOSE; 
    }
    
    break;
  
  case GAME_LOSE:
   background(0);
   printText();
   break;
  }
}

void printText(){
  if(status==GAME_START){
    textSize(60);
    textAlign(CENTER);
    fill(95,194,226);
    text("PRESS ENTER",width/2,height/2);
  }
  if(status==GAME_LOSE){
    textSize(60);
    textAlign(CENTER);
    fill(95,194,226);
    text("YOU LOSE",width/2,height/2);
  }
}

void drawLife() {
  textSize(20);
  fill(230, 74, 96);
  text("LIFE:", 36, height-5);
  int x = 78;
  int y = height-10;
  for(int i=0; i<25*life; i+=25){
    ellipse(x+i,y,15,15);
   
  }
  
}

void statusCtrl() {
  if (key == ENTER) {
    switch(status) {
    case GAME_START:
      status = GAME_PLAYING;
      break;
    
    case GAME_WIN:    
      status = GAME_PLAYING;
     // reset();      
      break;
    case GAME_LOSE:
     // reset();
      status = GAME_PLAYING;            
      break;
    }
  }
  
  if (mousePressed) {
    switch(status) {
    case GAME_PLAYING:
      status = GAME_SHOOT;
      break;
    }
  }

 }   
  
