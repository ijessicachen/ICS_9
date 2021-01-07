void setup(){
  size(800, 500);
  background(190, 240, 245);
  
  greenOnes();
  indigoOnes();
  purpleOnes();
}
void greenOnes(){
  fill(50, 230, 100);
  noStroke();
  pushMatrix();
  triangle(400, 460, 550, 250, 250, 250);
  translate(635, -160);
  rotate(PI/2);
  triangle(400, 460, 550, 250, 250, 250);
  translate(660, -165);
  rotate(PI/2);
  triangle(400, 460, 550, 250, 250, 250);
  rotate(PI/2);
  triangle(400, 460, 550, 250, 250, 250);
  popMatrix();
}
void indigoOnes(){
  
}
void purpleOnes(){
  
}
