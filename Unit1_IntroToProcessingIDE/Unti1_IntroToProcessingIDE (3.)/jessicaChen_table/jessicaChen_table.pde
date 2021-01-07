//A centred horizontally 12s times table up until 12 squared in the Console
//this uses the default console size in my computer

void setup(){
 /*
   Aught, we retrying this.
   closest value of \t is 4 \ts are 41 characters 
   
   Every row in the times table is 4 \ts and 7 characters, both split equally from the
   centre.
   This means there's one character in the middle and 3 characters + 2 tabs on either
   side.
   The row is 4 \ts and 7 characters which is 48 characters.
   
   The default indent for the console is 5 characters
   the length of the console is 91 characters, or 8 \ts and 9 spaces
   Together they are 96 characters, or 8 t\s and 14 spaces
   
   -----
   
   Of the 96, we need 48.
   96-48 = 48
   48/2 (since we centring it meaning an equal number of space needs to be on both (2)
   sides) = 24
   
   The left side also include the 5 character default indent so we subtract 5 from 24 
   leaving 19.
   
   -----
   
   19 is the amount of spaces I need to add before every entry in the times table
 */
  
 println("                   12\tX\t1\t=\t12");
 println("                   12\tX\t2\t=\t24"); 
 println("                   12\tX\t3\t=\t36"); 
 println("                   12\tX\t4\t=\t48");
 println("                   12\tX\t5\t=\t60"); 
 println("                   12\tX\t6\t=\t72"); 
 println("                   12\tX\t7\t=\t84"); 
 println("                   12\tX\t8\t=\t96"); 
 println("                   12\tX\t9\t=\t108"); 
 println("                   12\tX\t10\t=\t120"); 
 println("                   12\tX\t11\t=\t132"); 
 println("                   12\tX\t12\t=\t144");
}
