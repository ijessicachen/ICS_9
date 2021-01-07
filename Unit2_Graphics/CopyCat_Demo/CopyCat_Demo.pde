void setup(){
  size(800,500);
  background(#B2C8FF);
  drawings();
}
void drawings(){
    stroke(60);
    strokeWeight(4);
  fill(#B6EABF);
  rect(-5, 350, 807, 155);
  
  
  
  
fill(#EAC89F);
   arc(436, 158, 30, 30, radians(200), radians (417), OPEN); // right ear
  arc(405, 300, 150, 150, radians(297),radians(597), OPEN); //body
   arc(360, 160, 30, 30, radians(105), radians(340), OPEN);//left ear
 ellipse(400,200 ,100, 100); //head
 
 fill(60);
 ellipse(400, 205, 5, 5); //nose
 ellipse(380, 185, 7, 7); //left eye
  ellipse(420, 185, 7, 7); //right eye
  
  noFill();
arc(394, 210, 10, 10, radians(0), radians(100)); //left side mouth
arc(406, 210, 10, 10,radians(100), radians(200)); //right side mouth
arc(360, 280, 40, 40, radians(315), radians(480)); //left arm
arc(450, 280, 40, 40, radians(45), radians(225)); //right arm
ellipse(400, 210, 40, 35); //mouth circle

fill(#EAC89F);
ellipse(370, 350, 40, 60); //left leg
ellipse(440, 350, 40, 60); //right leg




fill(#FFD3D3);
arc(284, 289, 15, 15, radians(120), radians(330)); //flower petal top left
arc(296, 289, 15, 15, radians(550), radians(780)); //flower petal top right
arc(284, 301, 15, 15, radians(40), radians(230)); //flower petal bottom left
arc(296, 301, 15, 15, radians(310), radians(480)); //flower petal bottom right


fill(#FFEBA0);
arc(0,0, 200, 200, radians(0), radians(90));
line(290, 350, 290, 295); //flower stem
ellipse(290, 295, 15, 15); //flower center
}
