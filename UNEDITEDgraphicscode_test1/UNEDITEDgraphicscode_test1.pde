void setup(){  
  size(800, 500);    
//rectangle  
strokeWeight(5);  
rectMode(CORNER);  
rect(55, 345, 300, 135); 
  //triangle  
strokeWeight(1);  
triangle(205, 407.5, 217.5, 365, 247.5, 395); //BCD  
triangle(205, 407.5, 247.5, 420, 217.5, 450); //BEF  
triangle(205, 407.5, 192.5, 450, 162.5, 420); //BGH  
triangle(205, 407.5, 162.5, 395, 192.5, 365); //BIJ
}
