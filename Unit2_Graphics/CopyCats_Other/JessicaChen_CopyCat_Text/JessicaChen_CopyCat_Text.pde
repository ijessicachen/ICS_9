/*
  Name: Jessica Chen
  Date: Monday, December, 14, 2020
  Class: ICS2OF-0B
  Teacher: M. Cruceanu
  Assignment: COPY CAT
  
  Copy Cat 1 - Text
*/
//Global Varibales
//actual text
String textone = "The";
String texttwo = "Quick";
String textthree = "brown";
String textfour = "fox";
String textfive = "jumped";
String textsix = "over";
String textseven = "the lazy dog.";
//fonts
PFont font1;
PFont font2;
PFont font3;

//Void setup
void setup(){
  //loading said fonts
  font1 = loadFont("Times-Roman-48.vlw");
  font2 = loadFont("Monospaced-48.vlw");
  font3 = loadFont("Impact-48.vlw");
  
  size(800, 500);
  background(50);
  drawText();
}

void drawText(){
  textSize(38);
  fill(255);
  text(textfour, 100, 300);
  
  textSize(38);
  fill(255);
  text(textsix, 500, 300);
  
  textAlign(LEFT);
  textFont(font1, 32);
  fill(255);
  text(textone, 100, 30, 800, 500);
  
  textAlign(CENTER);
  textFont(font2, 34);
  fill(#E0A8A8);
  text(texttwo, 0, 60, 800, 500);
  
  textAlign(RIGHT);
  fill(#E5D1AB);
  textFont(font3, 36);
  text(textthree, 0, 90, 700, 300);
  
  textFont(font3, 44);
  fill(255);
  text(textfive, 400, 225);
  
  fill(#D1BA9C);
  textFont(font2, 18);
  text(textseven, 200, 350, 200, 350);
}
