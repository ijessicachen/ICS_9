/*
  Name: Jessica Chen
  Date: Monday, December 14, 2020
  Teacher: M.Cruceanu
  Assignment:
    Create a method which will draw three DIFFERENT, NON-OVERLAPPING ellipses. 
    Use ONLY ONE variable to set the position and size of the ellipses.
*/
//Global Variables
int var = 200;
void setup(){
  size(800, 500);
  background(255);
  ellipses();
}
void ellipses(){
  noStroke();
  fill(0);
  ellipse(var, var, var/2, var/2);
  ellipse(var+var*2/3, var+var*2/3, var+var/5, var+var/181);
  ellipse(var-var/2, var-var/2, var-var/5, var-var/3);
}
