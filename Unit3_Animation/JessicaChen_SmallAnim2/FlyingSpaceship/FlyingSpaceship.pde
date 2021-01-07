/*
  Name: Jessica Chen
  Teacher: M. Cruceanu/V. Krasteva
  Date: Saturday, December 19, 2020
  Assignment: Small Animations, Animation 2
    ∞ Flying Spaceship ∞
        Make a spaceship fly across the night sky
          It must have a tail behind that dissapears as it flies
        ONLY procedures
          setup(), draw(), mybackground(), flyingSpaceship()
*/
//Global Variables
//spaceship
int sx = 400;
int sy = 250;

//trail colours
int r1 = 255;
int g1 = 0;
int b1 = 0;
int r2 = 255;
int g2 = 100;
int b2 = 0;
int r3 = 255;
int g3 = 200;
int b3 = 0;
void setup(){
  size(800, 500);
}
void draw(){
  //Call the functions
  background(35, 10, 80);
  if((sx<650) && (sx>480)){  
    mybackground();
  }
  pushMatrix();
  translate(-105, -50);
  rotate(PI*10/36);
  flyingSpaceship();
  popMatrix();
}




void mybackground(){
  
  //"stars"
  stroke(255);
  //smallest
  strokeWeight(5);
    for(int l=1; l<=100; l+=1){
        point(random(950, 1950), random(-950, 950)); //less of them on the screen  
  }

  //medium
  strokeWeight(10);
    for(int l=1; l<50; l+=1){
        point(random(-950, 950), random(-950, 950));
  }
  
  //largest
  strokeWeight(20);
    for(int l=1; l<25; l+=1){
        point(random(-950, 950), random(-950, 950));    
  }
  
  //UFO
  float n = random(-950, 950);
  for(int l=1; l<25; l+=1){
      stroke(0);
      strokeWeight(1);
      fill(0, 0, 0, 200);
      arc(n, n, 30, 50, 0, PI);
      fill(0);
      ellipse(n, n, 80, 15);
      stroke(100, 100, 0);
      point(n-20, n);
      point(n-10, n-2);
      point(n+10, n-2);
      point(n+20, n); 
  }

}


void flyingSpaceship(){
  
  //SPACESHIP
  //spaceship trail
  noStroke();
  fill(r3, g3, b3);
  triangle(sx, sy+40, sx+20, sy+125, sx-20, sy+125);
  fill(r2, g2, b2);
  triangle(sx, sy+40, sx+30, sy+105, sx-30, sy+105);
  fill(r1, g1, b1);
  triangle(sx, sy+40, sx+40, sy+90, sx-40, sy+90);
  
  //spaceship body
  strokeWeight(1);
  stroke(0);
  fill(100);
  arc(sx, sy, 60, 120, HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI, CHORD);  
  //spaceship tail
  fill(200);
  quad(sx+20, sy+42, sx+40, sy+70, sx-40, sy+70, sx-20, sy+42);
  //passenger
  stroke(100, 255, 100);
  strokeWeight(3);
  noFill();
  ellipse(sx, sy, 20, 20);
  point(sx-5, sy);
  point(sx+5, sy);
  strokeWeight(5);
  point(sx, sy+3);
  //glass
  noStroke();
  fill(200, 200, 255, 100);
  ellipse(sx, sy-5, 40, 60);
  
  //move the spaceship
  sx+=1;
  sy-=3;


  //making the trails change colour and disappear
  //closest
  if((sx<670) && (sx>380)){
    g1+=3;
    if(g1>254){
      g1=0;
    }
  }
  else{
   r1-=5; 
   if(r1<35){
    r1=35; 
   }
   g1-=5;
   if(g1<10){
    g1=10; 
   }
   b1+=5;
   if(b1>80){
    b1=80; 
   }
  }
  
  //middle
  if((sx<650) && (sx>380)){
    g2+=3;
    if(g2>254){
     g2=0; 
    }
  }
  else{
   r2-=5;
   if(r2<35){
    r2=35; 
   }
   g2-=5;
   if(g2<10){
    g2=10; 
   }
   b2+=5;
   if(b2>80){
    b2=80; 
   }
  }
  
  //furthest
  if((sx<630) && (sx>380)){
    g3+=3;
    if(g3>254){
     g3=0; 
    }
  }
  else{
    r3-=5;
    if(r3<35){
     r3=35; 
    }
    g3-=5;
    if(g3<10){
     g3=10; 
    }
    b3+=5;
    if(b3>80){
     b3=80; 
    }
  }
}
