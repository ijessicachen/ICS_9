/*
Name: Jessica Chen
Teacher: M. Cruceanu/V. Krasteva
Date: Saturday, December 19, 2020
Assignment: Small Animations, Animation 1
  ø Rolling Boulder ø
      Get your uneven shaped boulder
         Down a hill, across the screen, hitting a wall, rolling backwards
      It has to ROLL, not just glide
      setup(), draw(), mybackground(), boulderDownHill(), boulderRoll Right() and Left() 
*/
//Global Variables
//boulder
float bx = 0; 
float by = 0; 
int degrees1 = 180;
int degrees2 = -180;
float speed = 9;
float movex = 3;
float movey = 2;
int count = 3;
//end message
int t = 0;
void setup(){
  size(800, 500);
}
void draw(){
  mybackground();
  
  pushMatrix();
    translate(movex, movey);
    rotateB();
  popMatrix();
  boulderDownHill();
  boulderRollRight();
  boulderRollLeft();
}




void mybackground(){
  background(50, 50, 100);
  noStroke();
  
  //Using width and height is more just for fun since it'll be too difficult to
  //actually integrate them into the boulder animation.
  
  fill(50, 100, 50);
  triangle(0, height/10, 0, height, width, height);
  fill(60, 120, 60);
  triangle(width/9, height/5, 0, height, width, height);
  fill(50, 100, 50);
  triangle(width/4.5, height/3.35, 0, height, width, height);
  fill(70, 140, 70);
  triangle(width/3, height/2.5, 0, height, width, height);
  fill(50, 100, 50);
  triangle(width/2.25, height/2, 0, height, width, height);
  fill(80, 160, 80);
  triangle(width/1.75, height/1.63, 0, height, width, height);
  fill(50, 100, 50);
  triangle(width/1.45, height/1.39, 0, height, width, height);
  
  fill(100, 50, 50);
  rectMode(CORNERS);
  rect(0, height*3/4, width, height);
  fill(120, 60, 60);
  rect(width*3/16, height*24/32, width, height*26/32);
  fill(140, 70, 70);
  rect(0, height*27/32, width*13/16, height*29/32);
  fill(160, 80, 80);
  rect(width*3/16, height*30/32, width, height);
  
  stroke(100);
  strokeWeight(20);
  line(width*79/80, 0, width*79/80, height);
  
  
  rectMode(CORNERS);
  fill(0, 0, 0, t);
  noStroke();
  rect(0, 0, 800, 500);
}




void Boulder(){
  fill(255);
  noStroke();
  beginShape();
    vertex(bx-5, by-25);
    vertex(bx+5, by-25);
    vertex(bx, by); 
    vertex(bx+25, by-5);
    vertex(bx+25, by+5);
    vertex(bx, by);
    vertex(bx+5, by+25);
    vertex(bx-5, by+25);
    vertex(bx, by);
    vertex(bx-25, by+5);
    vertex(bx-25, by-5);
    vertex(bx, by);
  endShape(CLOSE);
  
  noFill();
  stroke(255);
  strokeWeight(1);
  ellipse(bx, by, 80, 80);
  
  noStroke();
  fill(100, 200, 100);
  arc(bx, by, 80, 80, 0+HALF_PI*3/8, 0+HALF_PI*5/8);
  fill(200, 100, 100);
  arc(bx, by, 80, 80, HALF_PI+HALF_PI*3/8, HALF_PI+HALF_PI*5/8);
  fill(200, 200, 200);
  arc(bx, by, 80, 80, PI+HALF_PI*3/8, PI+HALF_PI*5/8);
  fill(100, 100, 200);
  arc(bx, by, 80, 80, PI+HALF_PI+HALF_PI*3/8, PI+HALF_PI+HALF_PI*5/8);
}


void rotateB(){
  if(count<662){
  //rotate the boulder right
  pushMatrix();
    translate(75, 45);
    rotate(radians(degrees1));
    Boulder();
  popMatrix();
  degrees1+=speed;
  }
  else{
   //rotate the boulder left
   pushMatrix();
     translate(75, 45);
     rotate(radians(degrees2));
     Boulder();
   popMatrix();
   degrees2-=speed;
  }
}




void boulderDownHill(){
  if(count<510){
    movex+=6;
    movey+=3.4;
    count+=6;
  }
}
void boulderRollRight(){
  if((count>=510) && (count<662)){
   movex+=6;
   count +=6;
  }
}
void boulderRollLeft(){
  if((count>=662) && (count<1450)){
   movex-=6; 
   count+=6;
  }
  if(count>=1450){
    t+=10;
    if(t>=255){
      fill(255);
      text("Program complete, click to exit.", 100, 250);
  }
  }
}





void mouseClicked(){
 if(t>254){
  exit(); 
 }
}
