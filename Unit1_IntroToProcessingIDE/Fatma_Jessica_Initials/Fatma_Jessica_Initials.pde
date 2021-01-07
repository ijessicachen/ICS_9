/* 

Authors: Fatma Jadoon and Jessica Chen
Date: Tuesday, December 1, 2020
Name of File: Fatma_Jessica_Initials.pde
Teacher: M. Cruceanu
Objective: Write your initials using initials

~Initials Assignment~ 
  Using 4 global string variables and the commands print(), println(), and \t, print you and your partner's initials in 20 rows and 80 columns.
  Further Requirments:
  • Only one oneSpace a time
  • Signed plan submitted prior to starting your assignment
  • top comments, setup() method and display() method all required.
  
  NOTE: We were unable to use \t due to the fact that the number of spaces per \t would not change. (it stayed at 7 spaces per tab no matter how many times we tried to change it)

*/

//Global Variables
//letters
String f="F"; // prints "F"
String j="J"; // prints "J"
String j2="j"; // prints "j"
String c="C"; // prints "C"
//oneSpaces
String eightSpace = "        "; // creates eight oneSpaces
String fourSpace = "    "; // creates four oneSpaces
String twoSpace = "  "; // creates two oneSpaces
String oneSpace = " "; // creates one oneSpace

void setup(){
  //Call the display method
  display();
}
void display(){
  //actual initials
  //top half rows (1-10), Fatma Jadoon
  println(f+f+f+f+f+f+f+f+f+f+f+f+f+eightSpace+j+j+j+j+j+j+j+j+j+j+j+eightSpace+eightSpace+j2+j2+j2+j2+j2+j2+j2+j2+j2+j2+j2+eightSpace+fourSpace+c+c+c+c+c+c); // row 1
  println(f+f+f+f+f+f+f+f+f+f+f+f+f+eightSpace+j+j+j+j+j+j+j+j+j+j+j+eightSpace+eightSpace+j2+j2+j2+j2+j2+j2+j2+j2+j2+j2+j2+eightSpace+twoSpace+oneSpace+c+c+fourSpace+c+c);  // row 2
  println(f+f+eightSpace+eightSpace+eightSpace+j+eightSpace+eightSpace+eightSpace+twoSpace+j2+eightSpace+fourSpace+twoSpace+oneSpace+c+c+fourSpace+twoSpace+c+c); // row 3
  println(f+f+eightSpace+eightSpace+eightSpace+j+eightSpace+eightSpace+eightSpace+twoSpace+j2+eightSpace+fourSpace+twoSpace+oneSpace+c+c+fourSpace+twoSpace+c+c); // row 4
  println(f+f+eightSpace+eightSpace+eightSpace+j+eightSpace+eightSpace+eightSpace+twoSpace+j2+eightSpace+fourSpace+twoSpace+c+c+eightSpace+c+c); // row 5
  println(f+f+eightSpace+eightSpace+eightSpace+j+eightSpace+eightSpace+eightSpace+twoSpace+j2+eightSpace+fourSpace+twoSpace+c+c+eightSpace+c+c); // row 6
  println(f+f+eightSpace+eightSpace+eightSpace+j+eightSpace+eightSpace+eightSpace+twoSpace+j2+eightSpace+fourSpace+oneSpace+c+c); // row 7
  println(f+f+eightSpace+eightSpace+eightSpace+j+eightSpace+eightSpace+eightSpace+twoSpace+j2+eightSpace+fourSpace+oneSpace+c+c); // row 8
  println(f+f+f+f+f+f+f+twoSpace+oneSpace+eightSpace+eightSpace+j+eightSpace+eightSpace+eightSpace+twoSpace+j2+eightSpace+fourSpace+oneSpace+c+c); // row 9
  println(f+f+f+f+f+f+f+twoSpace+oneSpace+eightSpace+eightSpace+j+eightSpace+eightSpace+eightSpace+twoSpace+j2+eightSpace+fourSpace+oneSpace+c+c); // row 10
  //bottom half (rows 11-20), Jessica Chen
  println(f+f+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+j+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+j2+fourSpace+fourSpace+fourSpace+oneSpace+c+c+fourSpace+fourSpace+oneSpace+oneSpace+oneSpace); // row 11
  println(f+f+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+j+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+j2+fourSpace+fourSpace+fourSpace+oneSpace+c+c+fourSpace+fourSpace+oneSpace+oneSpace+oneSpace); // row 12
  println(f+f+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+j+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+j2+fourSpace+fourSpace+fourSpace+oneSpace+c+c+fourSpace+fourSpace+oneSpace+oneSpace+oneSpace); // row 13
  println(f+f+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+j+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+j2+fourSpace+fourSpace+fourSpace+oneSpace+c+c+fourSpace+fourSpace+oneSpace+oneSpace+oneSpace); // row 14
  println(f+f+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+j+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+j2+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+c+c+fourSpace+fourSpace+c+c); // row 15
  println(f+f+fourSpace+fourSpace+fourSpace+fourSpace+j+j+fourSpace+oneSpace+oneSpace+j+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+j2+j2+fourSpace+oneSpace+oneSpace+j2+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+c+c+fourSpace+fourSpace+c+c); // row 16
  println(f+f+fourSpace+fourSpace+fourSpace+fourSpace+j+j+fourSpace+oneSpace+oneSpace+j+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+j2+j2+fourSpace+oneSpace+oneSpace+j2+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+oneSpace+c+c+fourSpace+oneSpace+oneSpace+c+c+oneSpace); // row 17
  println(f+f+fourSpace+fourSpace+fourSpace+fourSpace+j+j+fourSpace+oneSpace+oneSpace+j+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+j2+j2+fourSpace+oneSpace+oneSpace+j2+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+oneSpace+c+c+fourSpace+oneSpace+oneSpace+c+c+oneSpace); // row 18
  println(f+f+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+j+j+fourSpace+j+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+j2+j2+fourSpace+j2+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+c+c+fourSpace+c+c+oneSpace+oneSpace); // row 19
  println(f+f+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+j+j+j+j+j+fourSpace+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+j2+j2+j2+j2+j2+fourSpace+fourSpace+fourSpace+fourSpace+oneSpace+oneSpace+oneSpace+c+c+c+c+c+c+oneSpace+oneSpace+oneSpace); // row 20
}
