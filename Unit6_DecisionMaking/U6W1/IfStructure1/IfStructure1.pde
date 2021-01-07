/*6A conditional structures, Part 1*/




//Declaration Section
float testMark, outOf;


//Program Title
void title(){
 print("\t\t\t\t\t\tTest Percentage"); 
}
//Program introduction
void introduction(){
 title();
 println("\n\n\nThis program will determine your test average.");
}

//User Input
void userInput(){
 testMark = getFloat("Please enter you first test mark");
 outOf = getFloat("Please enter the amount the test was out of:");
}

//Processing &. Output
void display(){
 //Grade Calculatoin
 float grade; //local variable
 grade = (testMark/outOf)*100;
 
 //Output using an if structure
 if (grade >= 90){
  println("You passed with " + grade + " percent!");
  println("That's an A+!");
 }
 else if(grade >= 50.0){
  println("You passed with " + grade + " percent!");
 }
 else{
  println("You failed with " + grade + " percent!"); 
 }
}


void setup(){
  introduction();
  userInput();
  display();
 }
