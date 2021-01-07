/*
Authors: Ivy, Elena, Fatma
Topic: Lines and Points
Use only lines and points to create the Copycat image

SOME OF THE CODE IS MISSING! Complete the code bellow 
NOTE: some lines of code have been completely deleted, others have been partially changed
*/
int a = 76;

void setup(){
  size(800,500);
  background(194, 238, 255);
  
  stopSignAndRoad();
  dashline();
  snowflake();
}
void stopSignAndRoad(){
strokeWeight(200);
  stroke(80);
   line(-10, 450, 850, 450);
  strokeWeight(10);
   stroke(175);
   line(700, 150, 700, 500);
   stroke(200, 0, 0);
   strokeWeight(150);
   point(700, 150);
}
void dashline(){ // dashed line for road
  strokeWeight(10);
  stroke(255, 255, 0);
  line(0, 425, a, 425);
  line(a*2, 425, a*3, 425);
  line(a*4, 425, a*5, 425);
  line(a*6, 425, a*7, 425);
  line(a*8, 425, a*9, 425);
  line(a*10, 425, a*11, 425);
}
void snowflake(){ // snowflake 
  strokeWeight(10);
  stroke(255);
  
  pushMatrix();
  translate(150, 100);
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  popMatrix();
  
  pushMatrix();
  translate(410, 150);
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  popMatrix();
  
  pushMatrix();
  translate(550, 100);
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  rotate(radians(60));
  line(0,0,0,50);
  popMatrix();
}
