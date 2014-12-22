class Brick{
  
  float ix;
  float iy;
  float numInRow;
  float spaceOfcol;
  float spaceOfrow;
  float total;
  float size;
  
  Brick(){
   ix = 100;
   iy = 30;
   numInRow = 10;
   spaceOfcol = 40;
   spaceOfrow = 40;
   total =  50;
   size = 30;
    
  }
    
  void display(){
   for(int i=0; i<total; i++){
    int row = int((float)i / (float)numInRow);
    int col = int((float)i % (float)numInRow);
 
    float x = ix + (spaceOfcol*col);
    float y = iy + (spaceOfrow*row);
    
    fill(255);
    rect(x,y,size,size);
    
}
  }  
 

}
