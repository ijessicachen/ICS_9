/*
  Name: Jessica Chen
  Teacher: V. Krasteva
  Date: Monday, January 4, 2020
  Assignment: Decisions
    ~ Application 1 ~
      ~ Write a Processing program which will compare the amount of time 
      ~ between your return home from school and bedtime wth the number of 
      hours you need for homework to determine if you will be able to go to
      bed on time.
      ~ The message output should state if you need to stay late to finish 
      your homework or go to bed on time.
*/


//Global Variables
float returnTime;
float bedTime;
float homeworkTime;
float afterSchool;

//Program Title
void title(){
  println("\t\t\tBedtime");
}
//Program Introduction
void introduction(){
 title();
 println("\tWill you go to bed on time?");
 println("This program will help you determine if you'll sleep on time");
}


//User Input
void userInput(){
  //The user will input their own time they get back from school, bedtime,
  //and time for homework completion
 returnTime = getFloat("What time do you get home from school? Please enter it as a decimal with up to 6 decimal places, in the 24 hour clock"); 
  bedTime =  getFloat("What time do you go to bed? Same requirements as before, enter it as a decimal with up to 6 decimal places, in the 24 hour clock. If it is the next day just add that value to 24.");
  homeworkTime = getFloat("Please enter your best estimate of how long it will take you to do your homework here. Same requirements as before: ");
}


//Processing & Output
void display(){
  //CALCULATIONS
  //This calculates the time they have after school until bedtime
 afterSchool = bedTime-returnTime; 
 //This calculates the time left after they do their homework
 float timeLeft = afterSchool-homeworkTime;
 //This is just for the one else statement next
 float timeUp = timeLeft*-2+timeLeft;
 
 //DECISIONS
 //This is the basic output
 if(timeLeft >= 0){
   println("You can go to bed on time with " + timeLeft + " hours to spare!"); 
 }
 else{
  println("Guess you're staying up tonight, " + timeUp + " hours to be exact!"); 
 }
 //This gets more specific
 if(timeLeft >= 2){
  println("You'll have plenty of time to eat and loads of free time too!!!"); 
 }
 else if(timeLeft >= 1){
  println("You can eat in peace!!!");
 }
 else if(timeLeft >= 0.5){
   println("Cutting it a little close, but you can manage!!!");
 }
 else if(timeLeft == 0){
  println("Phew! Just in time!!!"); 
 }
 else if(timeLeft > -0.5){
  println("Just by half an hour, Phew!!!");
 }
 else if(timeLeft > -2){
  println("You got this!!!");
 }
 else{
  println("Yikes! Hang in there!!!"); 
 }
}


//Finalizing
void setup(){
  introduction();
  userInput();
  display();
}
