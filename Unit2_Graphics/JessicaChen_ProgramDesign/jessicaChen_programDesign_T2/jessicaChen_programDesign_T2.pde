/*
  Name: Jessica Chen
  Date: Monday, December 14, 2020
  Teacher: M. Cruceanu
  Assignment: Create a method which will draw series of lines with increasing space 
  between each. Use variables multiplication to create the design.
*/
int space = 1;
void setup(){
  size(800, 500);
  background(0);
  lines();
}
void lines(){
  stroke(255);
  while(space<801){
    line(space, 0, space, 500);
    space*=2;
  }
}
