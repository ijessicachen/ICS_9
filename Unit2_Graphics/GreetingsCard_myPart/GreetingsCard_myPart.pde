void setup(){
  size(800, 500);
  background(#E0ECFF);
  card();
}
void card(){
  
  //snowflakes
  pushMatrix();
    translate(-205, -210);
    snowflakes();
    translate(100, 60);
    snowflakes();
    translate(300, 70);
    snowflakes();
    translate(100, -130);
    snowflakes();
    translate(-500, 300);
    snowflakes();
  popMatrix();
  
  //snowman
  snowman();
  
  //wreath
  wreath();
  
}
void snowflakes(){
  int x = 400;
  int y = 250;
  stroke(255);
  strokeWeight(3);
  pushMatrix();
  line(x, y, x+15, y);
  rotate(PI/3);
  translate(17, -471);
  line(x, y, x+15, y);
  rotate(PI/3);
  translate(17, -471);
  line(x, y, x+15, y);
  rotate(PI/3);
  translate(17, -471);
  line(x, y, x+15, y);
  rotate(PI/3);
  translate(17, -471);
  line(x, y, x+15, y);
  rotate(PI/3);
  translate(17, -471);
  line(x, y, x+15, y);
  popMatrix();
}
void snowman(){
  //arms
  //main
  stroke(105, 70, 40);
  line(475, 320, 445, 360);
  line(325, 320, 355, 360);
  //fingers
  line(468, 315, 468, 330);
  line(470, 330, 480, 330);
  line(333, 315, 333, 330);
  line(320, 330, 330, 330);
  
  noStroke();
  //lower body
  fill(250);
  ellipse(400, 440, 120, 120);
  fill(255);
  arc(400, 420, 160, 100, QUARTER_PI, HALF_PI+QUARTER_PI);
  arc(400, 440, 120, 120, HALF_PI+QUARTER_PI+PI/7, TWO_PI+PI*3/28);
  //body
  fill(250);
  ellipse(400, 360, 90, 90);
  fill(255);
  arc(400, 340, 120, 90, QUARTER_PI, HALF_PI+QUARTER_PI);
  arc(400, 360, 90, 90, HALF_PI+QUARTER_PI+PI/7, TWO_PI+PI*3/28);
  //head
  fill(250);
  ellipse(400, 300, 70, 70);
  fill(255);
  arc(400, 268, 100, 90, QUARTER_PI, HALF_PI+QUARTER_PI);
  arc(400, 300, 70, 70, PI, TWO_PI);
  
  //Eyes
  fill(0);
  ellipse(385, 290, 10, 10);
  ellipse(410, 290, 10, 10);
  //Nose
  fill(250, 150, 0);
  triangle(400, 303, 400, 310, 370, 305);
  //Buttons
  fill(0);
  ellipse(395, 348, 15, 15);
  ellipse(393, 369, 15, 15);
  ellipse(395, 390, 15, 15);
}
void wreath(){
  noStroke();
  fill(0, 200, 100);
  ellipse(700, 340, 130, 130);
  fill(0, 150, 75);
  ellipse(700, 340, 80, 80);
  fill(#E0ECFF);
  ellipse(700, 340, 50, 50);
  
  //ornaments
  //red
  fill(255, 100, 100);
  ellipse(660, 290, 25, 25);
  ellipse(715, 375, 25, 25);
  //blue
  fill(150, 150, 255);
  ellipse(725, 300, 25, 25);
  ellipse(755, 370, 25, 25);
  //stars
  fill(255, 255, 100);
  int sx = 735;
  int sy = 315; 
  beginShape();
    vertex(sx, sy+.75);
    vertex(sx+=15, sy);
    vertex(sx+=18/4, sy-=15);
    vertex(sx+=18/4, sy+=15);
    vertex(sx+=15, sy+=.75);
    vertex(sx-=27/2, sy+=6);
    vertex(sx+=6, sy+=15);
    vertex(sx-=12, sy-=10.5);
    vertex(sx-=10.5, sy+=10.5);
    vertex(sx+=15/4, sy-=14.25);
  endShape(CLOSE);
  sx=630;
  sy=340;
  beginShape();
    vertex(sx, sy+.75);
    vertex(sx+=15, sy);
    vertex(sx+=18/4, sy-=15);
    vertex(sx+=18/4, sy+=15);
    vertex(sx+=15, sy+=.75);
    vertex(sx-=27/2, sy+=6);
    vertex(sx+=6, sy+=15);
    vertex(sx-=12, sy-=10.5);
    vertex(sx-=10.5, sy+=10.5);
    vertex(sx+=15/4, sy-=14.25);
  endShape(CLOSE);
  //triangles
  fill(250, 100, 255);
  int xt=695;
  int yt = 275;
  triangle(xt, yt, xt+5, yt+55, xt+10, yt);
  xt=675;
  yt=345;
  triangle(xt, yt, xt+5, yt+55, xt+10, yt);
  fill(#E0ECFF);
  ellipse(683, 350, 15, 15);//last ellipse to cover part of the triangle
}
