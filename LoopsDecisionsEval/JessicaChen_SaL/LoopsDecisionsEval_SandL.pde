/*
  Name: Jessica Chen
  Teacher: V. Krasteva
  Date: Friday, January 8, 2020
  Assignment: Loops-Decisions-Math
    Modified "Snake and Ladders"
      1. Write a program which corresponds to the decision making process of 
      "Snake and Ladders" board game. For this assignment graphic design of 
      the game will not be required.
      2. The game will be played with 2 dice and 2 players.
      3. Each die has 6 sides, each side marked iwth 1 to 6 spots
      corresponding to the numbers 1 through 6.
      4. Each player takes turn rolling the dice.
      5. The game continues until a value of 50 or more has been reaached by
      either of the players.
      6. The numbers displayed on teh dice when they stop are added together
      and then added to the total
      7. The only exception is when both dice roll identical values (1,1, or 
      2,2, or, 3,3, or, 4,4, or, 5,5, or, 6,6) at which point the dice
      current(for this roll only) total is doubled.
      8. Hint: You need to use random numbers (1-6) for each player's roll.
  Additional Sources: processing.org, usually just their pages about 
  various functions but occasionally I use a forum.
*/




//Global Variables
int menuIn; //for where to go from the menu
//players
String p1;
String p2;
int x; //This is to help with method specific things.
//dice
int die2;
int die1;
int count = 0;
//Table
int p1R;
int p1T = 0;
int p2R;
int p2T = 0;
int p11;
int p12;
int p21;
int p22;
int round1, round2;


//Title
void title(){
 println("\t\t\tSnakes and Ladders"); 
}


//Instructions
void instructions(){
  x = 0;
  title();
  
  //Introduction
  println("\n\tDoes everyone remember that board game \"snakes and ladders\"? Well, though it may not be as engaging we have a similar online game here!");
  //Basic rules
  println("\nIt's not as exciting but here you and a friend will take turns rolling two virtual dice.");
  println("Whatever you roll will be added together and to your final score!");
  println("Also, as with many other dice games if you roll a double (both the same value) your score that round will be doubled!!! ");
  println("Whoever reaches 50 first wins!!!");
  println("NOTE: for our game we will be comparing by round, which means if player 1 wins but player 2 also gets over 50 in the same round, it'll be a draw.");
  //Morea about the dice
  println("\nNow about our dice:");
  println("\tYou simply click the graphics window to roll");
  println("\tInitially, you will see two blank white dice. Player one will go first and click. Their result will be displayed with black dots on the white dice. Now it is player 2's turn. Their result will be on black dice with white dots, and this'll help keep track of who's turn it is.");
  println("\tExcluding the first roll, player one clicks when the dice are black with white dots, while player two does so when they're white with blakc dots.");
  println("\nNOTE: when there's a box you need to type in, please do that before any arrow key commands.");
 
  //last note
  println("\n\t\t\t    Have fun!!!");
  
  //to proceed
  println("\n\nTo get back to the menu, click the graphics window then the left key");
}


//menu
void menu(){
  //Okay I think it's just instructions, play game, and quit
  x = 1;
  title();
  
  //to quit
  println("\nYou can quit at any time by clicking the graphics console then pressing the down arrow button");
  //Other menu things
  println("\nEnter \"1\", no quotes, for the instructions");
  println("Enter \"0\", no quotes, to start the game!");
  println("Enter anything else to stay in the menu! Press the right arrow to choose another destination");
  println("NOTE: that'll only work while you are on this page");
  //Fix the code part of this
  //Okay so it works I think but you have to enter it twice after the first 
  //time
  menuIn = getInt("\nWhere do you want to go? Read the console for more info.");
}


//Actual game
void userInput(){
  p1 = getString("Please enter player 1's name");
  p2 = getString("Please enter player 2's name");
}
void display(){
  x = 2;
  title();
  
  //table headers
  println("\t" + p1 + "'s roll" + "\t\t" + p1 + "'s total" + "\t\t" + p2 + "'s roll" + "\t\t" +  p2 + "'s total");
  //Dice info all in mouseClicked()
  //This is here so they won't get confused when they don't see anything on the graphics window
  background(255, 255, 200);
  fill(255);
  rectMode(CORNERS);
  noStroke();
  rect(10, 10, 90, 90, 20);
  rect(110, 10, 190, 90, 20);
  //Table info also in mouseClicked()
}


//goodbye
void goodbye(){
  title();
  x = 3;
  
  println("");

  //Different depending on the results
  if((p1T >= 50) || (p2T >= 50)){
    if((p1T >= 50) && (p2T >= 50)){
      println("You both won!");
    }
    else if(p1T > p2T){
      println(p1 + " won!");
    }
    else{
      println(p2 + " won!");
    }
  }
  println("Thanks for using this program! Exiting program now...");
  //actual exit in setup()
}




//to make certain things functional
void keyPressed(){
  int verify;
  
  if(key == CODED){
    //How to quit
    if(keyCode == DOWN){
      verify = getInt("\n\nAre you sure you want to quit? Press \"323\" to do so, and any other integer to return to where you were. No quotes.\n\n");
      if(verify == 323){
        println("\n\n\n||~|~|~~~|~|||~~~|~|||~|~~|~|~~|~~|~~|~~~||~~|~|~~|~|~\n\n\n");
        goodbye(); 
        exit();
      }
      else{
        
      }
    }
    //How to choose where to go on menu if you close it beforehand
    if(x == 1){
      if(keyCode == RIGHT){
        println("\n\n\n||||||~||~~|~~||~|~|~~~~|~|~||~||~~|~|~|~|~|~\n\n\n");
        setup();
      }
    }
    //How to get back to menu from instructions()
    if(x == 0){
      if(keyCode == LEFT){
        println("\n\n\n~~||||~|~|~|~|~||||~||~~~~|~~|~|~||||~|~|~||~\n\n\n"); 
        setup();
      }
    }
  }
}
//The dice
void counter(){
  count ++;
}
void mouseClicked(){
  //to imitate actual dice
  die1 = round(random(1, 6));
  die2 =round(random(1, 6));
  
  //So it will only run while in diplay(), and provides an easy way to stop.
  if(x == 2){
    
    counter();  
    background(255, 255, 200);
      rectMode(CORNERS);
      noStroke();
      //to help differentiate between who's turn it is. 
      if(count %2 == 0){
         fill(0);
      }
      else{
       fill(255);
      }
      rect(10, 10, 90, 90, 20);
      rect(110, 10, 190, 90, 20);
     //Same as previous if with same conditional
     if(count %2 == 0){
       stroke(255);
     }
     else{
      stroke(0);
     }
      strokeWeight(10);
      //first die
      switch(die1){
        case 1:
          point(50, 50);      
          break;
        case 2:
          point(30, 70);
          point(70, 30);      
          break;
        case 3:
          point(50, 50);
          point(30, 70);
          point(70, 30);      
          break;
        case 4:
          point(30, 70);
          point(70, 30);
          point(30, 30);
          point(70, 70);      
          break;
        case 5:
          point(30, 70);
          point(70, 30);
          point(30, 30);
          point(70, 70);
          point(50, 50);      
          break;
        case 6:
          point(30, 70);
          point(70, 30);
          point(30, 30);
          point(70, 70);
          point(50, 30);
          point(50, 70);
          break;
        default:  
          break;
      }
      //second die
      switch(die2){
        case 1:
          point(150, 50);  
          break;
        case 2:
          point(130, 70);
          point(170, 30);      
          break;
        case 3:
          point(150, 50);
          point(130, 70);
          point(170, 30);      
          break;
        case 4:
          point(130, 70);
          point(170, 30);
          point(130, 30);
          point(170, 70);
          break;
        case 5:
          point(130, 70);
          point(170, 30);
          point(130, 30);
          point(170, 70);
          point(150, 50);      
          break;
        case 6:
          point(130, 70);
          point(170, 30);
          point(130, 30);
          point(170, 70);
          point(150, 30);
          point(150, 70);
          break;
        default:
          break;
      }
    
  //Table
  if(count %2 == 1){
    round1 += 1;
    p1R = die1 + die2;
    p11 = die1;
    p12 = die2;
    //so it'll double if it's a double
    if(die1 == die2){
      p1R *= 2;
    }
    p1T += p1R;
  }
  else{
    round2 += 1;
    p2R = die1 + die2;
    p21 = die1;
    p22 = die2;
    //so it'll double if it's a double
    if(die1 == die2){
      p2R *= 2;
    }
    p2T += p2R;
    //Also decided to print only when both results are known since 
    //both will alternate because my if statement is structured around 
    //even and odd numbers
    println("\t" + p11 + ", " + p12 + "   " + p1R + "\t\t" + p1T + "\t\t\t" + p21 + ", " + p22 + "   " + p2R + "\t\t" + p2T);
  }
  
  //closing
  //Will only run if at least one person is above 50.
  //The second part is the by round thing mentioned above where if they both go over 50 in the same round both win.
  if(((p1T >= 50) || (p2T >= 50)) && (round1 == round2)){ 
    println("\n\t" + p11 + ", " + p12 + "   " + p1R + "\t\t" + p1T + "\t\t\t" + p21 + ", " + p22 + "   " + p2R + "\t\t" + p2T);
    println("Final scores\t" + p1 + ": " + p1T + "\t\t" +  p2 + ": " + p2T);
    x = 10;
    setup();
  }
  }
}
void draw(){
  //Because this needs to exist for keyPressed to be functional
}




//putting it all together
void setup(){
  //to help with the literal dice
  size(200, 100);
  
  if((p1T >= 50) || (p2T >= 50)){
    println("\n\n\n||~|~|~|~~~|~|~|~|~|~|~|~|~~~~\n\n\n");
    goodbye();
    exit();
  }
  else{
     menu();
    if(menuIn == 1){
      println("\n\n\n~~|~~|~||~|~|~~|~|~|~|~|~|~|~|~|~|~~~~|~\n\n\n");
      instructions();
    }
    else if(menuIn == 0){
      println("\n\n\n~~|~||~||~|~|~|~|~|~|~|~|~~~|~~||||~|~|~|~~|||~~~\n\n\n");
      userInput();
      display();
    }
    else{
    } 
  }
}
