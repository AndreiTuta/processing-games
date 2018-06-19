Cell[][] board;  

int cols = 3;  
int rows = 3;  

void setup() {   
  size(300, 300);

  int w = width / cols;
  int h = height / rows;

  board = new Cell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j] = new Cell(i * w, j * h, w, h);
    }
  }
}   

void draw() {   
  background(255);  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].display();
    }
  }
}   

void mousePressed() {   
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].click(mouseX, mouseY);
    }
  }
}   

void validgame(){  
}
