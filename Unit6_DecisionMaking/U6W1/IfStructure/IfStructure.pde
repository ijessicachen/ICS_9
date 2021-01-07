/* Unit 6B Conditional Structures Par 1 */




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
 if (age >= 21){
  println(age, " is too old for high school!");
  println("You are probably working now");
 }
 else if(age>=14){
  println(age + " is just right for high school!");
 }
 else{
  println(age + "is too young for high school!"); 
 }
}




void setup(){
 introduction();
 userInput();
 display();
}

//Endprogram
