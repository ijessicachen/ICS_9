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
 //whether they passed or failed
 if ((grade >= 50.0) && (grade <= 100.0)){
  println("You passed with " + grade + " percent!"); 
 }
 else if ((grade < 50.0) && (grade >= 0.0)){
  println("You failed with " + grade + " percent!"); 
 }
 else{
 ;
 }
 //their letter grade
 if ((grade >= 95.0) && (grade <= 100.0)){
  println("That's an A+!");
 }
 else if ((grade >= 87.0) && (grade <=94.0)){
  println("That's an A!"); 
 }
 else if ((grade >= 80.0) && (grade <=86.0)){
   println("That's an A-");
 }
 else if ((grade >= 77.0) && (grade <= 79.0)){
   println("That's a B+");
 }
 else if ((grade >= 73.0) && (grade <= 76.0)){
  println("That's a B!"); 
 }
 else if ((grade >=70.0) && (grade <=72.0)){
  println("That's a B-!"); 
 }
 else if ((grade >= 67.0) && (grade <= 69.0)){
   println("That's a C+");
 }
 else if ((grade >= 63.0) && (grade <= 66.0)){
  println("That's a C!"); 
 }
 else if ((grade >= 60.0) && (grade <= 62.0)){
  println("That's a C-!"); 
 }
 else if ((grade >= 57.0) && (grade <= 59.0)){
  println("That's a D+!"); 
 }
 else if ((grade >= 53.0) && (grade <= 56.0)){
  println("That's a D!");
 }
 else if ((grade >= 50.0) && (grade <= 52.0)){
  println("That's a D-!"); 
 }
 else if ((grade >= 0.0) && (grade <= 49.0)){
  println("That's an F!");
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
