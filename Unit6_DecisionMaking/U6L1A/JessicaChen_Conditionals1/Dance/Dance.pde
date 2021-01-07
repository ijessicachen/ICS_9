/*
  Name: Jessica Chen
  Teacher: V. Krasteva
  Date: Monday, January 4, 2020
  Assignment: Decisions
    • Dance •
      • Create a program which will assist any teenager in deciding whether
      to attend a school dance
      • Consider all deciding factors such as ticket price, friends 
      attending, theme of the dance, etc.
*/


//Global variables
float ticketPrice;
int friends;
int maxTime;
String you;
int workload;
float scale = 0;


//Program Title
void title(){
 println("\t\t\t\tDance");
}
//Program Introduction
void introduction(){
 title();
 println("\t\t\tShould you go to the dance?");
 println("\tUsing five factors we will help you determine on a scale from one to ten how much we believe you should attend the dance."); 
 println("\n\tWe will be telling you how much each one contributed so if everything is optimal tickets will contribute 2, friends 3, your workload 2, and your own opinion 3. \n\tDepending on what your answer is, the more dots like this: • lined up on the right next to the output will show you how optimal your situation is. One dot (•) will mean it's the worst choice, and 5 dots (•••••) will mean it's the best one.");
 println("\tNOTE: The rating does NOT directly relate to how much it contributes to the scale");
}


//User Input
void userInput(){
 ticketPrice = getFloat("\n\n\nHow much do the tickets cost? In dollars please! Do not include the dollar($) sign.");
 maxTime = getInt("How long is the dance? In minutes please. This will help us evaluate the ticket worth.");
 friends = getInt("How many friends will be there?");
 workload = getInt("On a scale from one to ten, no decimals, how much work do you (think you'll) have? Ten being I can barely spare time to eat, one being I have time to go to the cottage 2 hours north and back again");
 you = getString("Do you want to go considering the above answers? Please answer with \"yes\" or \"no\", don't include the qutoes");
}


//Processing and Output
void display(){
 //Local variables
 float ticketWorth = maxTime/ticketPrice;
 
 //Make a gap so it's more organized
 print("\n");
 
  //CONDITIONALS AND INITIAL CALCULATIONS
  //tickets
 if(ticketWorth >= 8){
  println("ticket price: ideal                                  •••••");
  scale += 2;
 }
 else if(ticketWorth >= 13){
  println("ticket price: a little sketchy, the quality may be off••••"); 
  scale += 1.5;
 }
 else if(ticketWorth >= 5){
  println("ticket price: a little costly                          •••"); 
  scale +=1.25;
 }
 else if(ticketWorth >= 2){
  println("ticket price: even more expensive                       ••"); 
  scale +=1;
 }
 else{
  println("ticket price: Yikes                                      •"); 
 }
 println("Now it's " + scale + "/10");
 //friends
  if(friends >= 3){
    println("# of friends: perfect!                               •••••");
    scale += 3;
  }
  else if(friends >= 10){
   println("# of friends: Looks like you're not going anywhere!   ••••");
   scale += 2.5;
  }
  else if(friends >= 15){
   println("# of friends: Uhhhh, stay safe!                         ••");
   scale += 2.25;
  }
  else if(friends >= 1){
    println("# of friends: At least it's relatively calm            •••");
    scale += 2.4;
  }
  else{
    println("# of friends: Well, mom always did tell me to socialize  •");
    scale += 2;
  }
  println("ooo, it's " + scale + "/10 now!");
  //workload
  if(workload >= 8){
    println("workload: Yikes, maybe pass on this one                  •");
    scale += .75;
  }
  else if(workload >= 6){
    println("workload: Only if you can focus 100% when needed!       ••");
    scale += 1.25;
  }
  else if(workload >= 3){
    println("workload: Have fun, but I hope you can focus!          •••");
    scale += 1.5;
  }
  else if(workload >=1 ){
    println("workload: Have a blast!!!                             ••••"); 
    scale += 1.75;
  }
  else if(workload == 0){
    println("workload: WOW, knock yourself out!!!                 •••••");
    scale += 2;
  }
  else{
   ; 
  }
  println("With your workload it's " + scale + "/10!");
  //your opinion
  if(you == "yes"){
     println("YAY                                             ••••/•••••");
     scale += 3;
  }
  else{
     println("Yikes!                                            •••/••/•"); 
  }
  //Final Suggestion!!!
  println("\nOur rating is " + scale + "/10!");
  if(scale >= 8){
   println("Have tons of fun!!! We have high hopes for this!");
  }
  else if(scale >= 6){
    println("Not to shabby, enjoy it the best you can!");
  }
  else if(scale >= 3){
    println("Oof. Go if you want, but maybe it'd be better not to."); 
  }
  else if(scale >= 1){
    println("Our best suggestion is not to go."); 
  }
  else{
    println("no"); 
  }
}




//Put it all together!!!
void setup(){
 introduction();
 userInput();
 display();
}
