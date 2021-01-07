void setup(){
 size(800, 500);
 background(255);
}
void draw(){
 //main house
 rectMode(CENTER);
 rect(400, 330, 400, 335);
 //roof
 triangle(400, 2, 600, 163, 200, 163);
 
 //window
 rectMode(CORNERS);
 rect(240, 308, 450, 468);
 //door
 rect(490, 350, 560, 497);
 
 //chimney
 quad(250, 2, 300, 2, 300, 82, 250, 122);
}
