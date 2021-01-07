/* Unit 6B Conditional Structures Part 1 */




//Declaration Section
int birthYear, currentYear;


//Pogram Title
void title(){
 println("\t\t\tAge program");
}
//Programintroduction
void introduction(){
 title();
 println("\t\tThis program will help you determine how old you are.");
}


//User Input
void userInput(){
 birthYear=getInt("Please enter your birth year: ");
 currentYear=getInt("Please enter the current year: ");
}


//Processing &Output
void display(){
 int age;
 //Age Calculation
 age=currentYear-birthYear;
 
 //Output using an if structure
 if (age > 21){
  println(age, "is pretty old for school!");
  println("You may be working!");
 }
 else if (age >= 13){
  println(age, "is just right for high school!"); 
 }
 else if (age >= 11){
  println(age, "is just right for middle school!"); 
 }
 else if (age >= 5){
   println(age, "is just right for elementary school!");
 }
 else if (age >= 3){
   println(age, "is just right for kindergarten!");
 }
 else if (age > 0){
   println(age, "is a little young for school, but start if you want!"); 
 }
 else{
  ;
 }
}




void setup(){
 introduction();
 userInput();
 display();
}

//Endprogram
