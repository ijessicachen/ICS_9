/*
  Teacher: V. Krasteva
  Date: Tuesday, January 5, 2020
  Assignment: Loops Lesson 1 assignments
    2: Write a for loop which will count by 2s from a number entered
    by the user to another number entered by the user (i.e. 10 to 20)
    . You can use variables in the loop conditions
*/
//Global variables
int num1, num2;


//User Input
void userInput(){
  num1 = getInt("Please enter an integer");
  num2 = getInt("Please enter an integer");
}
//Actual stuff
void display(){
  //Format stuff
  print("\n");
  //Wanted output
  if(num1 <= num2){
    for(int l = num1; l<=num2; l=num1){
      println(num1);
      num1 += 2;
      //dealing with odd numbers
      if(num2-num1 == -1){
        println(num1);
        println("One number is even and one number is odd. We have passed the second number " + num2 + ".");
        break;
      }
    }
  }
  else{
   for(int l = num1; l>=num2; l=num1){
     println(num1);
     num1 -= 2;
     //dealing with odd numbers
     if(num1-num2 == -1){
       println(num1);
       println("One number is even and one number is odd. We have passed the second number " + num2 + ".");
       break;
     }
   }
  }
}


//Putting it all together
void setup(){
  userInput();
  display();
}
