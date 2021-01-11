/*
  Name: Jessica Chen
  Teacher: V. Krasteva
  Date: Thursday, January 7, 2020
  Assignment: Rock Paper Scissors Game simulation
    Create a program simulation for two players game Rock, Paper, Scissors.
      1. Take input for the players names.
      2. Continue taking input for every round of the game for each player
      3. Evaluate each round.
      4. Announce the winner or draw for each round
      5. Keep score- two points for every win, one point each for each draw.
      6. Subtract 1 point for every loss from the players grand total.
      7. The player who first reaches 10 points wins.
      8. Game shoudl be played until a winner is declared or if one player
      decides to "quit" 
      9. Please not: to compare "scissors", "rock", "paper" you need to use
      StringVar.equals("rock")
*/
//GOAL: Finish this game, rock paper scissors, by TODAY
/*
  So far completed the instructions and menu, maybe. I still have to figure
  out if I do anything special if it's the acc program running.
  do the literal code for display now, looping later
  
  No matter how much I complete today, edit it tomorrow too.
    Make sure the confirm quit thing works
    fix how the menu works in display()
    and it seems the goodbye
*/
//GLobal Variables
//to help with the menu
byte b = 0;
//related to the game itself
String p1 = "nome";
byte tpoints1, tpoints2;
int roundp1, roundp2;
int output1, output2;
String output1w, output2w;
//for quitting
int verify = 459;




//Title
void title(){
 println("\t\t\tRock Paper Scissors"); 
}




//User Input
void userInput(){
  if((p1 == "nome") && (b == 2)){
    p1 = getString("Please enter your name");
  }
  else if((b == 2)){
    //do the variable even odd thing again
    output1 = getInt("Please enter your move for this round.");
  }
}




//Instructions
void instructions(){
  //For the menu
  b = 0;
  
 //Get the title
 title();
  //subtitle
  println("\n\t\t\t    How to play");
  
 //introduction
 println("Many of us know rock paper scissors as one of the most iconic games of our childhood. You can play it nearly everywhere you go, but with COVID-19 it's more difficult than before.");
 println("It is an in-person game where you must see their hands and also be able to show yours. It can be played verbally or online.");
 println("It is probably played best as a two player game, and that is what we are doing here, but you can play with as many people as you'd like");
 
 //quick note
 println("\nBefore you start, please ensure your consol size is at least 600px");
 
 //basic rules
 println("\nHere are the basic rules:");
 println("\tThere are three things you can play, rock, paper, or scissors. These are usually respresented with a fist, sideways palm, and a horizontal peace sign respectively.");
 println("\tIf you play the same thing it is a draw, however, rock beats scissors, scissors cuts paper, and paper folds rock.");
 println("\tThat's basically it! Though we have some more specifics for our game.");
 //Rules for our program
 println("Additional rules for this program:");
 println("\tFor our program we will be introducing a point system.");
 println("\t\tIf you win you will get two points");
 println("\t\tIf it's a draw, both people get a point");
 println("\t\tIf you lose, you lose a point");
 //How to play for our program
 println("You are probably aware that our program is online, this also means you must find another way to represent rock, paper, and scissors");
 println("Also, you will be playing against the computer.");
 println("For our program you simply type \"1\", \"2\", or \"3\" without the quotations for the one you want to play that round.");
  println("1's for rock, 2 is scissors, and 3 is paper.");

  //Parting note
  println("\nYou may proceed to any page referenced in the menu from here");
}




//Game
void display(){
  
  //game
    //results
    userInput();
    //for player 1
    if(output1 == 1){
      output1w = "rock   ";
    }
    else if(output1 == 2){
      output1w = "paper  ";
    }
    else if(output1 == 3){
      output1w = "scissors";
    }
    else{
      println("That is not an option. Please enter \"1\", \"2\", or \"3\", no quotes. They represent rock, paper, and scissors respectively.");
      output1w = "error";
    }
    output2 = round(random(1, 3));
    if(output2 == 1){
     output2w = "rock   "; 
    }
    else if(output2 == 2){
      output2w = "paper  ";
    }
    else if(output2 == 3){
      output2w = "scissors"; 
    }
    
    //points
    if(output1 == output2){
      roundp1 = 1;
      roundp2 = 1;
    }
    else if((output1 -1 == output2) || (output1 +2 == output2)){
      roundp1 = 2;
      roundp2 = -1;
    }
    else if((output2 -1 == output1) || (output2 +2 == output1)){
      roundp1 = -1;
      roundp2 = 2;
    }
    tpoints1 += roundp1;
    tpoints2 += roundp2;

    //the line will be for now:
    if(output1w != "error"){
      println("   " + output1w + "  " + roundp1 + "\t" + tpoints1 + "\t\t   " + output2w + "  " + roundp2 + "\t" + tpoints2);
    }  
    else{ 
    }  
}




//Menu
void menu(){
  //So they can't navigate to menu while on menu
  b= 1;
  
  title();
  //ADD MORE DETAILS ABOUT where you can and cannot navigate like:
  //You can't navigate to the page you're on
  //I may have to make it so you can't go anywhere except quit once you start
  // the game.
  
  println("\n\t\t\tWelcome!!!");
  println("\tClick the graphics window then press the following keys to navigate");
  println("\n\tPress the up arrow to view the instructions");
  println("\tPress the left arrow to quit");
  println("\tPress the down arrow to go back to the menu");
  println("\n\tPress the right arrow to proceed to the game!");
}
//to help because keyPressed needs void draw() I think
void draw(){
}
//keyPressed
void keyPressed(){
  if(key == CODED){
    if((keyCode == UP) && (b != 0) && (b != 3)){
      println("\n\n\n\n\n•∆^•∆^•∆^•∆^•∆^•∆^•∆^\n\n\n\n\n");      
      instructions();
    }
    if((keyCode == LEFT) && (b != 3)){
      verify = getInt("Are you sure you want to quit? Type \"0\", no quotes, to verify. Enter any other integer to stay where you are");
      if(verify == 0){
        goodbye();
        exit();
      }
      else{
        
      }
    }
    if((keyCode == DOWN) && (b != 1) && (b != 3)){
      println("\n\n\n\n\n•∆^•∆^•∆^•∆^•∆^•∆^•∆^\n\n\n\n\n");    
      menu(); 
    }
    if((keyCode == RIGHT) && (b != 2) && (b != 3)){
      println("\n\n\n\n\n•∆^•∆^•∆^•∆^•∆^•∆^•∆^\n\n\n\n\n");    
        //For the menu
        b = 2;
        //title
        title();
        
        
        //Enter their names
        userInput();
        
        //table setup
        println("\t\t" + p1 + "\t\t\t" + "computer");
        println("output and points \t\t\t output and points");
        println("  this round \t points total \t   this round \t points total");
      while((tpoints1 < 10) && (tpoints2 < 10)){
        display(); 
      }
      goodbye();
      exit();
    }
  }
}




//Goodbye
void goodbye(){
  //for the menu
  b = 3;
  
    //after the game is over
  if((tpoints1 >= 10) || (tpoints2 >= 10)){
    if((tpoints1 >= 10) && (tpoints2 >= 10)){
       println("It's a draw!");
    }
    else if(tpoints1 >= 10){
      println("Good job! You won!!!");
    }
    else if(tpoints2 >= 10){
      println("Better luck next time! You lost!!!");
    }
  }
  
  println("Thank you for using this program!!!");
  println("Exiting now...");
}




//Put it all together
void setup(){
   //To help with navigation
   size(250, 100);
   background(0, 0, b);
   text("Click here before attempting to navigate", 5, height/2); 
 
 menu();
}
