void setup(){
 size(800, 500);
 //make the background white
 background(255);
}
void draw(){
  //the retangle and circle
 rectMode(CORNERS);
 rect(530, 160, 792, 492);
 ellipseMode(CORNERS);
 ellipse(532, 162, 790, 490);
 
 //the arrow
 beginShape();
 vertex(150, 3);
 vertex(300, 203);
 vertex(150, 403);
 vertex(150, 283);
 vertex(3, 283);
 vertex(3, 123);
 vertex(150, 123);
 endShape(CLOSE);
}
