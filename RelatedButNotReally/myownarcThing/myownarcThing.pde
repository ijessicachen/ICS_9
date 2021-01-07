/*

IMPORANT TO INCLUDE
  Parameters
    • At least some with radians and some with degrees(radians()) and differ in angles
    • Change size too, not all regular
    • OPEN, PIE, CHORD, and DEFAULT
    • ellipseMode()
  Mess with stroke and fill including noStroke() and noFill()

*/
int h = 165;

void setup(){
  size(400, 400);
  background(255);
  ellipseMode(RADIUS);
  
  //Top Right Corner Design
  //Gray like "rays"
  noStroke();
  fill(0, 0, 0, 50);
  arc(30, 30, 165, h, radians(352), radians(370));
  arc(30, 30, 165, h, radians(374), radians(392));
  arc(30, 30, 165, h, radians(396), radians(414));
  arc(30, 30, 165, h, radians(418), radians(435));
  arc(30, 30, 165, h, radians(440), radians(458));
  //middle filled part
 fill(255, 200, 200); 
 arc(15, 15, 125, 125, 0, HALF_PI);
 //Two only border arcs
 stroke(255, 100, 100);
 strokeWeight(5);
 noFill();
 arc(15, 15, 160, 160, 0, /*HALF_PI*/ HALF_PI*3/4, PIE);
 arc(5, 5, 135, 135, 0, HALF_PI, PIE);
 
 
 
 //Bottom right corner design
 fill(0, 0, 0, 50);
 arc(395, 395, 100, 100, PI, PI+HALF_PI);
 
 fill(255, 200, 200);
 noStroke();
 arc(345, 245, 30, 30, PI, TWO_PI);
 arc(345, 250, 30, 30, 0, PI);
 arc(245, 345, 30, 30, HALF_PI, PI+HALF_PI);
 arc(250, 345, 30, 30, PI+HALF_PI, TWO_PI+HALF_PI);
 
 strokeWeight(5);
 stroke(255, 100, 100);
 arc(375, 150, 30, 50, QUARTER_PI, PI+HALF_PI+QUARTER_PI, OPEN);
 arc(150, 375, 50, 30, HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI, OPEN);
 
 

 
 //Divider thingy that's probably unecessary
 strokeWeight(8);
 stroke(200, 255, 200);
 noFill();
 
 arc(50, 350, 50, 50, HALF_PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI);
 
}
