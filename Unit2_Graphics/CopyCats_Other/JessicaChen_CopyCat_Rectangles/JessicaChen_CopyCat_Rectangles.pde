/*
void setup(){
  size(600,500);
  background(r,g,b);
}
void draw(){
  stroke(r,g,b);
  strokeWeight(p);
  fill(r,g,b);
  rect(x,y,w,h);
  rect(x,y,w,h);
  fill(r,g,b);
  square(x,y,s);
}
*/
//r=red, b=blue, g=green, x=x-coordinate, y=y-coordinate, w=width, h=height, 
//s=side length 
void setup(){
  size(600,500);
  background(255, 43, 227);
}
void draw(){
  stroke(0);
  strokeWeight(2);
  fill(255, 0,239);
  rect(100,130,100,370);
  fill(223, 0, 255);
  rect(200,80,100,450);  
  fill(255, 0, 239);
  rect(300,190,100,370);
  fill(223, 0, 255);
  rect(400,100,100,490);
  
  strokeWeight(0);
  fill(255, 255, 0);
  square(50,40,70);
  strokeWeight(2);
  fill(255, 0, 136);
  rect(0,430,600,70);
  fill(232,213,0);
  rect(10,460,60,20);
  rect(100,460,60,20);
  rect(190, 460,60,20);
  rect(280,460,60,20);
  rect(370,460,60,20);
  rect(460,460,60,20);
  rect(550,460,60,20);
  
  fill(245, 0, 255);
  rect(30,350,30,80);
  fill(245, 0, 255);
  rect(540,350,30,80);
  fill(154, 0, 131);
  rect(10,290,70,80);
  fill(154, 0, 131);
  rect(520,290,70,80);
}
