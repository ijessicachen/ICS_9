/*
  For Unit4 Workshet 1, Math Homework
*/

//Declaration Section
int num1;
int num2;
int answer, answer1, answer2;
float answer3, answer4;

//Title
void title(){
 println("Math Testing Program"); 
}

//Introduction
void introduction(){
 title();
 print("This program will do all four math functions");
 println("with two numbers entered by you!");
}

//Input
void userInput(){
 num1=getInt("Enter an integer number:");
 num2=getInt("Enter a second integer number:");
}

//Output-Math Calculations & Display
void display(){
 print("Math Equations is: \t\t");
 println("Result\t");
 //Addition
 answer = (num1+num2);
 println(num1, "+", num2, "\t\t\t", "=", answer);
 //Subtraction
 answer1 = (num1-num2);
 println(num1, "-", num2, "\t\t\t", "=", answer1);
 //Multiplication
 answer2 = (num1*num2);
 println(num1, "*", num2, "\t\t\t", "=", answer2);
 //Division
 answer3=(num1)/(num2);
 println(num1, "/", num2, "\t\t\t", "=", answer3);
 answer4=(float(num1)/float(num2));
 println(num1, "/", num2, "\t\t\t", "=", answer4);
}

//Main Program
void setup(){
 introduction();
 userInput();
 display();
}
