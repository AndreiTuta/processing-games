// A Cell object  
class Cell  {   
  //coords
  float x,y;  
  //cell width and height
  float w,h;
  // individual cell state
  int state;  

  // Cell Constructor  
  Cell(float tempX, float tempY, float tempW, float tempH)  {   
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    
    // Random ints in some cells
    // state = int(random(3)); 
  }   

  void click(int mx, int my)  {   
    if (mx > x && mx < x + w && my > y && my < y + h) {
      //Changethe state of one of the cells
      state = (state + 1) % 3; 
    }
    
  }   

  void display()  {   
    stroke(0);
    noFill();
    rect(x,y,w,h);
    
    // line part
    int b = 19;
    
    if (state == 0) {
      // nothing
    } else if (state == 1) {
      // Draw an O
      ellipse(x+w/2,y+h/2,w-b,h-b);
    } else if (state == 2) {
      // Draw an X
      line(x+b,y+b,x+w-b,y+h-b);
      line(x+w-b,y+b,x+b,y+h-b); 
    }
  }

}   
