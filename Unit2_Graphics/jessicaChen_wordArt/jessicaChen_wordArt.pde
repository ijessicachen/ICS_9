/*

  Name: Jessica Chen
  Date: Monday, December 14, 2020
  Teacher: M. Cruceanu
  Assignment:
  
  - Word Art -
  On a canvas size 800 by 500 design a poster representing your personality
    • Likes
    • Dislikes
    • World Causes you support
  You need to submit a plan first including a sketch and colour, image, and text ideas
  Include comments
  Have a nice layout
  High Quality Shapes

*/
/*
  My word art
  Literal design
    blocky pink and lime strips with a couple of indigo circle on it
  
  Likes are pink, dislikes lime, causes I support indigo
  ~ Likes
      • There will be one letter of "likes" in each column in the lightest shade
      • 5 likes (outdoors, reading, anime, sports + activities, board + card games)
      • each one of these will have 2-4 subcategories identified by their differing
      shades (as they get darker they will turn more red)
  ~ Dislikes
      • There will be two letters of "dislikes" in each column in the lightest shade
      • 4 dislikes (pain + injury, too much socializing, samll things, discrimination
      • The same concept as before except the small things sectoin will be ordered based
      off how much they irk me and instead of turning more read they'll turn more green-
      blue
  ~ Causes I support
      • I can fit maybe 3 or four
      • WWF, stop climate change, SickKids, Doctors Without Borders
      • For these I'll just describe it ordering based on importance.
*/




//Global Variables
//fonts
//font(cause/dislike/like)(Most important/details)
PFont fontC1;
PFont fontC2;
PFont fontD1;
PFont fontD2;
PFont fontL1;
PFont fontL2;
//aha specify more later


//void setup
void setup(){
  //make the canvas the right size
  size(800, 500);
  
  //load fonts needed
  fontC1 = loadFont("BodoniSvtyTwoITCTT-Bold-48.vlw");
  fontC2 = loadFont("GillSans-48.vlw");
  fontD1 = loadFont("SignPainter-HouseScriptSemibold-48.vlw");
  fontD2 = loadFont("Cochin-Italic-48.vlw");
  fontL1 = loadFont("Chalkboard-Bold-48.vlw");
  fontL2 = loadFont("Noteworthy-Bold-48.vlw");
  
  //get everything on the canvas
  all();
}




//function where I put everything together
void all(){
 colourBack(); 
 causeText();
 LDHeaders();
 translate(500, 0);
 rotate(PI/2);
 Dislikes();
 translate(500, 0);
 rotate(PI);
 Likes();
}


//function for the background
void colourBack(){
  //the pink, equally important coloured section for likes
  background(240, 0, 155);
  
  noStroke();
  fill(135, 250, 20);
  //create a bunch of original shapes that are like crooked lines ish
  beginShape();
    vertex(80, -5);
    vertex(170, -5);
    vertex(180, 30);
    vertex(175, 80);
    vertex(200, 250);
    vertex(160, 400);
    vertex(180, 505);
    vertex(70, 505);
    vertex(100, 450);
    vertex(80, 200);
    vertex(120, 100);
    vertex(120, 50);
  endShape(CLOSE);
  beginShape();
    vertex(280, -5);
    vertex(350, -5);
    vertex(330, 110);
    vertex(370, 220);
    vertex(340, 450);
    vertex(340, 505);
    vertex(300, 505);
    vertex(270, 400);
    vertex(270, 200);
    vertex(280, 180);
    vertex(300, 100);
  endShape(CLOSE);
  beginShape();
    vertex(400, -5);
    vertex(500, -5);
    vertex(530, 40);
    vertex(530, 200);
    vertex(480, 300);
    vertex(520, 350);
    vertex(470, 505);
    vertex(450, 505);
    vertex(430, 400);
    vertex(425, 350);
    vertex(440, 200);
    vertex(460, 100);
  endShape(CLOSE);
  beginShape();
    vertex(600, -5);
    vertex(680, -5);
    vertex(700, 70);
    vertex(700, 100);
    vertex(660, 220);
    vertex(680, 300);
    vertex(680, 400);
    vertex(660, 505);
    vertex(580, 505);
    vertex(580, 380);
    vertex(620, 330);
    vertex(600, 100);
    vertex(620, 50);
  endShape(CLOSE);
    
  //then three or four circles on top for the causes
  fill(120, 200, 255, 200);
  ellipse(150, 300, 230, 230);
  ellipse(400, 10, 370, 330);
  ellipse(600, 400, 280, 280);
  fill(85, 105, 255);
  ellipse(150, 300, 200, 200);
  ellipse(400, 10, 340, 300);
  ellipse(600, 400, 250, 250);
}

//the functions I'll be using for the text
void causeText(){
  //Main Ideas
  fill(200, 255, 255);
  textFont(fontC1);
  text("WFP", 100, 285, 200, 200);
  text("Climate Change", 243, 10, 400, 200);
  text("WWF", 543, 390, 150, 150);
  
  //Detailsssss
  textFont(fontC2);
  textSize(20);
  fill(150, 240, 240); 
  text("World", 118, 220, 150, 150);
  text("Food Program", 88, 240, 150, 150);
  text("HUM", 55, 290, 150, 150);
  text("AN-", 61, 310, 150, 150);
  text("ITA", 205, 285, 150, 150);
  text("RIAN", 200, 305, 150, 150);
  
  text("Worsening all existent problems", 265, 60, 300, 300); 
  text("Summer arctic sea ice gone", 285, 100, 300, 300);
  text("by 2050", 365, 120, 300, 300);
  
  text("World Wide", 600, 370, 300, 300);
  text("Fund", 670, 390, 200, 200);
  text("for", 670, 410, 100, 100);
  text("Nature", 650, 430, 200, 200);
  text("Since", 490, 390, 100, 100);
  text("1961", 490, 410, 100, 100);

  
  fill(150, 240, 200);
  text("8.9% starving", 68, 260, 150, 150);
  text("stable, prosperous", 75, 348, 150, 150);
  text("future", 128, 368, 150, 150);
  
  text("CMO,            CATF,             CEF", 270, 80, 300, 300); 
  
  text("over 85", 570, 290, 150, 150);
  text("extinct since the", 530, 310, 150, 150);
  text("1500s", 500, 330, 150, 150);
  text("Tiger, Giant Panda,", 490, 430, 300, 300);
  text("Elephan, Polar Bear, etc.", 502, 453, 400, 400);
  
  
  fill(150, 200, 250);
  text("UN", 188, 260, 150, 150);
  text("Over 80 countries", 73, 330, 150, 150);
  
  text("            CRN,              RFUS,    ", 270, 80, 300, 300);
  
  text("Non-governmental", 522, 473, 200, 200);
  text("Food, climate,", 580, 330, 200, 200);
  text("freshwater, wildlife, forests,", 490, 350, 400, 400);
  text("and oceans", 490, 370, 150, 150);
}
void LDHeaders(){
  //likes
  textFont(fontL1);
  textSize(48);
  fill(255, 250, 250);
  text("L", 80, 100); 
  text("I", 230, 450);
  text("K", 390, 270);
  text("E", 510, 270);
  text("S", 700, 250);
  
  //dislikes
  textFont(fontD1);
  textSize(48);
  fill(250, 255, 200);
  text("D", 100, 190);
  text("I", 130, 470);
  text("S", 310, 230);
  text("L", 310, 440);
  text("I", 470, 210);
  text("K", 445, 280);
  text("E", 610, 110);
  text("S", 625, 238);
}
void Dislikes(){
  textFont(fontD2);
  
  //headers
  textSize(33);
  fill(255, 255, 255); //get a colour!!!
  text("Discrimination", 8, -170, 200, 200);
  text("Things", 310, 35, 200, 200);
  text("Too much", 250, 160, 200, 200);
  text("Socializing", 260, 190, 200, 200);
  text("Pain + Injury", 10, 330, 250, 250);
}
void Likes(){
  textFont(fontL2);
  
  //headers
  textSize(33);
  fill(255, 255, 250);
  text("Outdoors", 300, -480, 200, 200);
  text("Reading", 305, -300, 200, 200);
  text("Sports +", 8, -150, 200, 200); 
  text("Activities", 8, -110, 200, 200);
  text("Anime", 300, 40, 200, 200);
  text("Board + Card Games", 20, 250, 400, 400);
}
