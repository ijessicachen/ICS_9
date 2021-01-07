/*
  Name: Jessica Chen
  Teacher: M.Cruceanu / V.Krasteva
  Date: Saturday, December 19, 2020;
  Assignment: Small Animations, Animation 4
    • Car Assembly •
        various car parts will assembled in the middle
          They'll come flying in from different sides
        ONLY
          setup(), draw(), mybackground(), carAssembly()
*/




//Global Variables
//car
int bPos = 860; 
int ePos = 550;
int eHeight = 500; 
int lPos = -50;
int lWidth = 400;
int wheel1 = -50; 
int wheel2 = 550;
int gPos = -100; 
int gSize = 70; 
//to help
int bodyd = 30;
//background + similar
int b = 255;
int t = 0;


void setup(){
  size(800, 500);
}


void draw(){
  mybackground();
  if(eHeight==10){
    background(b=0);
    pushMatrix();
    translate(-400, -250);
    scale(2);
    carAssembly();
    popMatrix();
    t +=2;
  }
  else{
    carAssembly(); 
  }
  fill(0, 0, 0, t);
  rectMode(CORNERS);
  rect(0, 0, 800, 500);
  
  if(t>=255){
    fill(255);
    text("Program complete.", 100, 250);
  }
}




void mybackground(){
  background(b);
}
void carAssembly(){
  //CAR
  noStroke();
  rectMode(CENTER);
  fill(200);
  rect(ePos+280, ePos, 20, eHeight); //exhaust
  fill(255, 255, 200);
  rect(bPos+140, bPos, 300, 60, 20); //body
  strokeWeight(1);
  fill(200, 255, 255);
  stroke(255, 255, 200);
  arc(gPos+170, gPos, gSize+80, gSize, PI, TWO_PI); //glass
  fill(255);
  rect(lPos, lPos+10, lWidth, 30, 10); //light
  stroke(200);
  fill(100);
  ellipse(wheel1+20, wheel1, 60, 60); //left wheel
  ellipse(wheel2+180, wheel2, 60, 60); //right wheel
  strokeWeight(2);
  line(wheel1+10, wheel1, wheel1+30, wheel1); //wheel 1 details
  line(wheel1+20, wheel1-10, wheel1+20, wheel1+10); 
  ellipse(wheel1+20, wheel1, 5, 5);
  line(wheel2+170, wheel2, wheel2+190, wheel2); //wheel 2 details
  line(wheel2+180, wheel2-10, wheel2+180, wheel2+10);
  ellipse(wheel2+180, wheel2, 5, 5);
  
  //move them!!!
  if(ePos>270){
    ePos-=5;
  }
  if(bPos>260){
   bPos-=4; 
  }
  if(lPos<250){
   lPos+=6; 
  }
  if(gPos<230){
   gPos+=5; 
  }
  if(wheel1<300){
   wheel1+=5; 
  }
  if(wheel2>300){
   wheel2-=5; 
  }
  
  //fix them!!!
  if(wheel1==300){
    if(eHeight>10){
      eHeight-=5;
    }
    if(lWidth>20){
      lWidth-=5;
    }
    if(gSize<120){
     gSize+=1; 
    }   
  }
}
