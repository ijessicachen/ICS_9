PFont font;    // Declare the variable  
PFont font2;
String mytext;
String mytext2;
void setup() {
  font = createFont("serif",32);
  font2 = createFont("georgia", 100);
  size(800,500);
  background(255); //Just to see if I can mess with transparancy
  fill(10, 25, 10);
  rect(0, 0, 800, 500);
  drawText();
}
void drawText(){
  mytext="Think outside of the";
  
textFont(font);  // Set the current text font 
  
fill(255, 200, 200);    // sets the color and transparency of the letters; stroke() does not have an effect on font. 
text(mytext, 230, 190, 100, 200);
  
  strokeWeight(20);
  stroke(255, 200, 200, 150);
  rect(370, 190, 212, 110);
  
  mytext2 = "BOX";
  fill(10, 25, 10);
  textFont(font2);
  text(mytext2, 370, 190, 300, 200);
}
