class Player {
  
  //  variabelen
  int x;
  int y;
  
  int h;
  int w;
  
  boolean isMovingLeft;
  boolean isMovingRight;
  
  int speed;
  
  //
  Player(int startX, int startY, int startH, int startW){
  x = startX;
  y = startY;
  h = startH;
  w = startW;
  
  isMovingLeft = false;
  isMovingRight = false;
  
  
  speed = 10;
  
  }

  // functies
  void render(){
    ellipse(x,y,h,w);
    
   
  }

  void move(){
  if (isMovingLeft){
    x -= speed;
      
  }
  if (isMovingRight){
    x += speed;
    
    
    
    }
  }
}
