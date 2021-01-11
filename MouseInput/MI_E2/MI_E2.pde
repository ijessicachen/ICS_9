/*
  Name: Jessica Chen
  Teacher: V. Krasteva
  Date: Monday, January 11, 2020
  Assignment: Mouse Input
    Exercise 2:
      Using a similar principal to the example and Exercise 1, 
      write a program which will continuously draw 30x30 circles
      following the mouse cursor. Test this program out on an
      800x800 sized screen.
*/
void setup(){
 size(800, 800); 
 background(55, 0, 0); 
}
void draw(){
 noStroke();
 fill(200, 255, 255);
 ellipseMode(CENTER);
 ellipse(mouseX, mouseY, 30, 30);
}
