/*
  Name: Jessica Chen
  Teacher: V. Krasteva
  Date: Monday, January 11, 2020
  Assignment: Mouse Input
    Exercise 3:  
      Write a progra which will have a trail like example 2, but
      only when the mouse is held, and whenever the mouse is 
      released, it will draw a square of a different colour.
*/
void setup(){
 size(400, 400);
 background(0, 55, 0);
}
void draw(){
  //for the trail
  if(mousePressed == true){
    mousePressed();
  }
}


//circles
void mousePressed(){
  noStroke();
  fill(255, 200, 255);
  ellipseMode(CENTER);
  ellipse(mouseX, mouseY, 30, 30);
}
//squares
void mouseReleased(){
  noStroke();
  fill(0, 0, 55, 100);
  rectMode(CENTER);
  rect(mouseX, mouseY, 40, 40);
}
