import de.bezier.guido.*;
import java.lang.Math;

public class Circle {
  color fill = color(255);
  float x,y, radius;
  
  Circle(float xx, float yy, float rr) {
    x = xx; y = yy; radius = rr;
    Interactive.add(this);
  }
  
  void draw() {
    fill(fill);
    ellipse(x,y,radius*2,radius*2);
  }
  
  boolean contains(float mx,float my) {
    return Math.pow(mx - x,2) + Math.pow(my - y,2) < Math.pow(radius,2);
  }
}

public class Oval {
  color fill = color(255);
  float x,y, width,height;
  
  Oval(float xx, float yy, float ww, float hh) {
    x = xx; y = yy; width = ww; height = hh;
    Interactive.add(this);
  }
  
  void draw() {
    fill(fill);
    ellipse(x,y,width,height);
  }
  
  boolean contains(float mx,float my) {
    return x < mx && mx < x + width && y < my && my < y + height;
  }
}

public class Rect {
  color fill = color(255);
  float x,y, width,height;
  
  Rect(float xx, float yy, float ww, float hh) {
    x = xx; y = yy; width = ww; height = hh;
    Interactive.add(this);
  }
  
  void draw() {
    fill(fill);
    rect(x,y,width,height);
  }
  
  boolean contains(float mx,float my) {
    return x < mx && mx < x + width && y < my && my < y + height;
  }
}

public class Square {
  color fill = color(255);
  float x,y, length;
  
  Square(float xx, float yy, float ll) {
    x = xx; y = yy; length = ll;
    Interactive.add(this);
  }
  
  void draw() {
    fill(fill);
    rect(x,y,length,length);
  }
  
  boolean contains(float mx,float my) {
    return x < mx && mx < x + length && y < my && my < y + length;
  }
}

public class Line {
  color stroke = color(255);
  float x1,y1, x2,y2;
  
  Line(float xx1, float yy1, float xx2, float yy2) {
    x1 = xx1; y1 = yy1; x2 = xx2; y2 = yy2;
    Interactive.add(this);
  }
  
  void draw() {
    stroke(stroke);
    line(x1,y1,x2,y2);
  }
  
  
}

public class Text {
  float x,y;
  String text;
  
  Text(String tt, float xx1, float yy1) {
    x = xx1; y = yy1;
    text = tt;
    Interactive.add(this);
  }
  
  void draw() {
    text(text,x,y);
  }
  
}

public class Image {
  color fill = color(255);
  float x,y, width,height;
  PImage img;
  
  Image(PImage ii, float xx, float yy, float ww, float hh) {
    x = xx; y = yy; width = ww; height = hh;
    img = ii;
    Interactive.add(this);
  }
  
  void draw() {
    fill(fill);
    image(img,x,y,width,height);
  }
  
  boolean contains(float mx,float my) {
    return x < mx && mx < x + width && y < my && my < y + height;
  }
}
