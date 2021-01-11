/*
  Name: Jessica Chen
  Teacher: V. Krasteva
  Date: Monday, January 11, 2020
  Assignment: String Problems
    2. Output your name adding "ha" to every letter (use one
    loop, 2 vars)
*/
//Global variables
String word;

//UserInput
void userInput(){
  word = getString("Please enter your name\n");
}

//Display
void display(){
  int loc = 0;
  for(int i=0; i<word.length(); i++){
    print(word.charAt(loc) + "ha");
    loc += 1;
  }
  print("\n");
}
//For two letters then ha
void display2(){
  int loc = 0;
  int count = 0;
  for(int i=0; i<word.length(); i++){
    count += 1;
    if(count %2 == 0){
      print(word.charAt(loc) + "ha");
    }
    else{
      print(word.charAt(loc));     
    }
    loc += 1;
  }
  println("\n");
}


//Put it all together
void setup(){
  userInput();
  display();
  display2();
}
