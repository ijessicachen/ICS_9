/*
  Name: Jessica Chen
  Teacher: V. Krasteva
  Date: Monday, January 11, 2020
  Assignment: Mouse Input
    Exercise 1:
      Write a program which will draw a 40x40 square when the 
      mouse is clicked. The square should be centred around the
      cursor (hint: think back to the drawing modes from the 
      graphics intro worksheets). The screen should be big
      enough to draw several squares on.
*/
void setup(){
  size(400, 400);
  background(0);
}

void draw(){
  
}
void mouseClicked(){
  noStroke();
  fill(255);
  rectMode(CENTER);
  rect(mouseX, mouseY, 40, 40);
}
