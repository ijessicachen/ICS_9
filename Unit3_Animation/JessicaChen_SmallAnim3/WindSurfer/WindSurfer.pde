/*
  Name: Jessica Chen
  Teacher: M. Crucanu/V. Krasteva
  Date: Saturday, December 19, 2020
  Assignment: Small animations, animation 3
    - Windsurfer -
        windsurfer board across the screen
        ONLY
          setup(), draw(), myBackground(), windsurfer()
*/
//Global Variables
//sun
int rs = 300;
int rb = 100;
//sea
int sh = 200;
int c = 0;
//end
int t = 0;
//windsurfer
int wx = -50;

//both windsurfer and sea
int sh2 = 180;
void setup(){
  size(800, 500);
}
void draw(){
  //windsurfer and sea
  switch(c){
    case 0:
      sh+=2;
      sh2+=1;
      if(sh>300){
        c++;
      }
      break;
    case 1:
      sh-=2;
      sh2-=1;
      if(sh<100){
       c--; 
      }
      break;
  }
  mybackground();
  windsurfer();
}




void mybackground(){
  background(220, 220, 255);
  
  //SUN
  noStroke();
  //rays
  fill(255, 255, rb);
  arc(400, 0, rs, rs, PI/18, PI*30/180);
  arc(400, 0, rs, rs, PI*46/180, PI*66/180);
  arc(400, 0, rs, rs, PI*82/180, PI*102/180);
  arc(400, 0, rs, rs, PI*118/180, PI*138/180);
  arc(400, 0, rs, rs, PI*154/180, PI*174/180);
  //sun
  fill(255, 255, 100);
  arc(400, 0, 150, 150, 0, PI);
  //so there's a space between the sun and the rays
  noFill();
  stroke(220, 220, 255);
  strokeWeight(20);
  arc(400, 0, 160, 160, 0, PI);
  
  //animating the rays
  rs+=1;
  rb+=3;
  if(rs>350){
    rs=300;
    rb=100;
  }
  
  
  //SEA
  //sea
  noStroke();
  fill(0, 180, 150);
  rectMode(CENTER);
  rect(400, 400, 800, sh);
  fill(0, 200, 170);
  rect(400, 410, 800, sh2);
  rect(400, 450, 800, 100);
  
  //end
  rectMode(CORNERS);
  fill(0, 0, 0, t);
  rect(0, 0, width, height);
  //animation
  if(wx>800){
    t+=10;
  }
  if(t>254){
    fill(255);
    text("Program Complete.", 100, 240);
  }
}


void windsurfer(){
  
  //windsurfer
  //boat
  stroke(0);
  fill(0);
  strokeWeight(3);
  ellipse(wx, sh2+250, 80, 10);
  line(wx+20, sh2+250, wx+20, sh2+250-60);
  strokeWeight(1);
  fill(100, 100, 100, 200);
  triangle(wx+20, sh2+250-60, wx+20, sh2+250-15, wx-30, sh2+250-40);
  //person
  fill(0);
  ellipse(wx+5, sh2+250-30, 10, 10);
  ellipse(wx+5, sh2+250-18, 12, 15);
  line(wx+3, sh2+250-10, wx+3, sh2+250);
  line(wx+6, sh2+250-10, wx+6, sh2+250);
  line(wx+6, sh2+250-15, wx+18, sh2+250-20);
  line(wx+6, sh2+250-18, wx+16, sh2+250-22);
  
  //animation
  wx+=5;
}
