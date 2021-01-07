//Using char variables, setup(), draw(), print() and println() methods
  char a = 'A';
  char b = 'B';
  
  
void setup() {    //print() and println() can be used in setup() but not in draw()
  size(600,600);   //size of the window
  text("Ari al",16,40);    //type of text 
  //stroke(0);    //sets the color of the brush; 0 is black, 255 is white
  //fill(0);     //black pen

  println (a+a+"\t\t\t"+b+b);   //prints on the console (below the code)
  print (a+a+a+"\t\t\t"+b+b+b);
}

//print() and println() cannot be used in draw(), only text()
void draw() {    
  
  background(255);      //white

 // stroke(0);    //sets the color of the brush; 0 is black, 255 is white
  fill(0);     //black pen
  
  //Using variables for each letter: a for A, etc
  text ("\t" + a+a+"\t \t"+b+b, 20, 80);
  text ("\t" + a+a+a+"\t \t \t"+b+b+b, 20, 100);
  
  //Making big Strings first (if you should make the giant A first): 
  String text1 = "\tABC\t\tABC\nABC\tABC\tABC";
  String text2 = "\t\t\t\t\t\t\t\tDEF\t\tDEF\n\t\t\t\t\t\tDEF\tDEF\tDEF";
  text(text1, 20, 200);
  text(text2, 100, 200);
  
}
