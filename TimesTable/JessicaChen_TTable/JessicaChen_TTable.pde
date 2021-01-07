/*
  Name: Jessica Chen
  Teacher: V. Krasteva
  Date: Wednesday, January 6, 2020
  Assignment: TimesTable
    Write a program that outputs ten lines of the 5 times table multiplied
    by the range with the middle value entered by the user.
*/
//Global Variables
int num, product;


//Title
void title(){
  println("\t\t\t5 Times Table");
}
//Introduction
void introduction(){
  title();
  println("The number YOU enter will be the fifth value in a range of ten that is to be multiplied by 5");
}


//User Input
void userInput(){
  num = getInt("\nPlease enter an integer:");
}


//Times Table
void display(){
  //Format stuff
  println("\n");
  //So I can smoothly run the loop from lowest to highest value
  num -= 5;
  //Times table
  for(int l = 1; l <= 10; l++){ //This way it will run ten times
    num +=1;
    product = 5*num;
    println(5 + "\t" + "times" + "\t" + num + "\t" + "=" + "\t" + product);
  }
}


//Putting it all together
void setup(){
  introduction();
  userInput();
  display();
}
