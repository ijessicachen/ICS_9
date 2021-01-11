/*
  Name: Jessica Chen
  Teacher: V. Krasteva
  Date: Monday, January 11, 2020
  Assignment: String Problems
    1. Ouput your name backwards to the screen
*/
//Global variables
String word;

//User Input
void userInput(){
  word = getString("Please enter your name\n");
}

//Display
void display(){
  int loc = word.length()-1;
  for(int i = 0; i<word.length(); i++){
    print(word.charAt(loc));
    loc -= 1;
  } 
}


//put it all together
void setup(){
  userInput();
  display();
}
