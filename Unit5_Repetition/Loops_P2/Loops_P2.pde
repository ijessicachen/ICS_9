/*
  Name: Jessica Chen
  Teacher: V. Krasteva
  Date: Tuesday, January 5, 2020
  Assignment: 
  
    Write a full Processing program that accepts and verifies the code entered by
workers in a company.
  If the code entered is between 1000- 1021 the program will display greeting
“Welcome Technical staff”.
  If the code entered is between 1022 and 1050 the program will display greeting
“Welcome office staff”.
  If the code entered is 1087,1099,1100 then the message displayed should be
“Welcome maintenance staff”.

  If the code entered is 1111, the message should be “Welcome boss”.
  Any other code should display a message – “Error. You do not work here”.
  A code of 0 will end the program.
  
  Use the following procedures: title, introduction, userInput and display

*/
//Global Variables
int code = 1;


//Title that'll be printed
void title(){
  println("\t\t\tCompany®");
}
//Introduction, kind of like a subheading in this case.
void introduction(){
  int d = day();
  int m = month();
  int y = year();
  
  title();
  //this will display the date
  println("\t\t\t" + d + "/" + m + "/" + y);
}


//User Input
void userInput(){
  code = getInt("Please enter your code.");
}


//The content that is to be shown
void display(){
  if((code >= 1000) && (code <= 1021)){
    println("Welcome Technical staff"); 
  }
  else if((code >= 1022) && (code <= 1050)){
   println("Welcome office staff"); 
  }
  else if((code == 1087) || (code == 1099) || (code == 1100)){
   println("Welcome maintenence staff"); 
  }
  else if(code == 1111){
   println("Welcome boss"); 
  }
  else if(code == 0){
   exit(); 
  }
  else{
   println("Error. You do not work here"); 
  }
}




//Putting everyting together
void setup(){
  introduction();
  //I put the loop here so you do not need to re-run the program to enter a new code
  while(code != 0){
    userInput();
    display();
  }
}
