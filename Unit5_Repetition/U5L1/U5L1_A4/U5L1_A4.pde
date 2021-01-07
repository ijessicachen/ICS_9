/*
  Teacher: V. Krasteva
  Date: Tuesday, January 5, 2020
  Assignment: U5L1 Assignments
    4: Write a for loop which will take 2 numbers fro the user - 
    start and stop number.
       Then it will print in table format
       a) the loop counter value
       b) the current value of the loop counter multiplied by itself
       c) the square root of the loop counter multiplied by 2 plus 5
       d) the result of the square root as a fraction (1/x).
    There is an example on the worksheet you can use for reference
*/


//Global Variables
int startV;
int stopV;
int sqrt;


//Title
void title(){
 println("\t\t\tThe Loop Counter Value"); 
}
//Introduction
void introduction(){
  println("Below, a set of Loop Counter Values of your choosing will be organized into 4 columns.");
  println("The Loop Counter Value will be frequently represented with lcv");
  userInput();
}


//User Input
void userInput(){
  startV = getInt("Enter a start lcv, please keep it triple digits maximum. It must an integer:");
  stopV = getInt("Enter a stop lcv. Same requirments as before, please keep it triple digits maximum. It must be an integer:");
}


//calculations and output
void display(){
  //FORMAT
  //Table headings
  println("\n\nlcv \t lcv^2 \t    √lcv*2+5 \t1/√lcv");
  //Space
  print("\n");
  
  //LOOP
  //This is to determine whether it increases or decreases and to adjust accordingly
  if(startV <= stopV){
    //This loop is for if the numbers or increasing or are the same
    for(int lcv = startV; lcv<=stopV; lcv++){
      //Second column variable
      int pow = lcv*lcv;
      
      //This part heavily centres on the last two columns
      float sqrtR = sqrt(lcv); //This literally square roots the number
      //What is printed depends on whether the current lcv is a perfect square.
      if((sqrtR %2 == 0.0) || (sqrtR %2 == 1.0)){
        //If it is I can just use sqrtR as it is where they should be used
        sqrt = int(sqrtR);
        int optCol3 = sqrt*2+5;
        println(lcv + "\t " + pow + "\t     " + optCol3 + "\t\t" + "1/" + sqrt);
      }
      else{
        //if not I'll just use the lcv with a "√" square root sign in front.
        sqrt = lcv;
        println(lcv + "\t " + pow + "\t     " + "√" + sqrt + "*2+5" + "\t" + "1/√" + sqrt);
      }
    }
  }
  else{
    //This is for if they're decreasing, 
    //and basically follows the same thing,
    //the square root part is the most complicated after all.
    for(int lcv = startV; lcv>=stopV; lcv--){
      //Second column variable
      int pow = lcv*lcv;
      
      //This part heavily centres on the last two columns
      float sqrtR = sqrt(lcv); //This literally square roots the number
      //What is printed depends on whether the current lcv is a perfect square.
      if((sqrtR %2 == 0.0) || (sqrtR %2 == 1.0)){
        //If it is I can just use sqrtR as it is where they should be used
        sqrt = int(sqrtR);
        int optCol3 = sqrt*2+5;
        println(lcv + "\t " + pow + "\t     " + optCol3 + "\t\t" + "1/" + sqrt);
      }
      else{
        //if not I'll just use the lcv with a "√" square root sign in front.
        sqrt = lcv;
        println(lcv + "\t " + pow + "\t     " + "√" + sqrt + "*2+5" + "\t" + "1/√" + sqrt);
      }
    }
  }
}


//put it all together
void setup(){
  title();
  introduction(); 
  //to ensure that they will not enter a value that is not supported:
  if((stopV > 999) || (startV > 999)){
    println("Error. Ending program now...");
    exit();
  }
  else{
   display();
  }
}
