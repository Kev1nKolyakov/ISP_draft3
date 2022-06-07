//declaration section
float wolfX=0; //controls wolf x coordinate
float wolfY=200; //controls wolf y coordinate
float rabbitX=700; //controls rabbit x coordinate
float rabbitY=300; //controls rabbit y coordinate
Boolean rabbitAlive=true; //boolean variable that detects if rabbit is alive

void coniferous() {
  background();
  if ((rabbitX+90)-(wolfX+290)<20) { //detects if the wolf and rabbit collides
    rabbitAlive=false; //computer sets rabbit boolean as dead
  }
  if (rabbitAlive) {
    rabbitX-=2; //whenever rabbit is alive, rabbit moves to the left
  } else {
    rabbitX=wolfX+190; //whenever rabbit is dead, it follows the wolf
    rabbitY=170;
  }
  wolfX+=2; //wolf always moves no matter what
  rabbit();
  wolf();
  if (wolfX+290>1200) { //detects when the wolf leaves the screen far enough
    rabbitAlive=true; //makes the rabbit alive
    rabbitX=700;//teleports the rabbit 
    rabbitY=300;
    wolfX=-400;//teleports the wolf to the left side of the screen
  }
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=450 && mouseY<=500) {//if click right arrow, move to the right
    delay(200);
    isInside3=false;
    isInside4=true;
    info=false;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=450 && mouseY<=500) {//if click left arrow, move to the left
    delay(200);
    isInside3=false;
    isInside2=true;
    info=false;
  }
}

void background() {
  background(196, 255, 252); //sky
  fill(169, 183, 184);
  beginShape();//mountain
  vertex(250, 100);
  vertex(350, 200);
  vertex(600, 400);
  vertex(50, 400);
  vertex(200, 200);
  endShape(CLOSE);
  fill(104, 156, 117);
  rect(0, 300, 800, 200);//ground
  fill(69, 157, 163);
  ellipse(240, 350, 300, 50);//pond

  //variables used to make placing trees easier
  float treeX=660; //controls x coordinate of trees
  float treeY=250; //controls y coordinate of trees
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);//trunk
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);//leafs
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);//leafs

  treeX=720;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=100;
  treeY=220;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=45;
  treeY=260;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=150;
  treeY=300;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=270;
  treeY=230;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=406;
  treeY=277;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=477;
  treeY=220;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  pushMatrix();
  scale(1.3);//larger tree variant
  treeX=445;
  treeY=170;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);
  popMatrix();
}

void wolf() {
  fill(100);
  beginShape();//outline of wolf
  vertex(wolfX+191, wolfY+96);
  vertex(wolfX+217, wolfY+58);
  vertex(wolfX+232, wolfY+48);
  vertex(wolfX+241, wolfY+37);
  vertex(wolfX+244, wolfY+43);
  vertex(wolfX+251, wolfY+35);
  vertex(wolfX+253, wolfY+55);
  vertex(wolfX+263, wolfY+61);
  vertex(wolfX+268, wolfY+73);
  vertex(wolfX+293, wolfY+81);
  vertex(wolfX+288, wolfY+97);
  vertex(wolfX+261, wolfY+98);
  vertex(wolfX+256, wolfY+116);
  vertex(wolfX+228, wolfY+163);
  vertex(wolfX+208, wolfY+179);
  vertex(wolfX+202, wolfY+244);
  vertex(wolfX+212, wolfY+249);
  vertex(wolfX+218, wolfY+259);
  vertex(wolfX+191, wolfY+260);
  vertex(wolfX+179, wolfY+239);
  vertex(wolfX+174, wolfY+177);
  vertex(wolfX+141, wolfY+174);
  vertex(wolfX+115, wolfY+162);
  vertex(wolfX+93, wolfY+191);
  vertex(wolfX+70, wolfY+213);
  vertex(wolfX+78, wolfY+245);
  vertex(wolfX+88, wolfY+251);
  vertex(wolfX+96, wolfY+256);
  vertex(wolfX+86, wolfY+263);
  vertex(wolfX+67, wolfY+257);
  vertex(wolfX+60, wolfY+248);
  vertex(wolfX+55, wolfY+248);
  vertex(wolfX+43, wolfY+202);
  vertex(wolfX+57, wolfY+159);
  vertex(wolfX+48, wolfY+143);
  vertex(wolfX+49, wolfY+125);
  vertex(wolfX+44, wolfY+175);
  vertex(wolfX+33, wolfY+190);
  vertex(wolfX+21, wolfY+207);
  vertex(wolfX+7, wolfY+218);
  vertex(wolfX+5, wolfY+177);
  vertex(wolfX+23, wolfY+131);
  vertex(wolfX+49, wolfY+101);
  vertex(wolfX+93, wolfY+91);
  vertex(wolfX+145, wolfY+98);
  endShape(CLOSE);
  fill(0);
  beginShape();//eye
  vertex(wolfX+266, wolfY+68);
  vertex(wolfX+260, wolfY+73);
  vertex(wolfX+269, wolfY+73);
  endShape();
  beginShape();//nose
  vertex(wolfX+284, wolfY+78);
  vertex(wolfX+293, wolfY+80);
  vertex(wolfX+291, wolfY+87);
  endShape();
}

void rabbit() {
  //body and head
  fill(200);
  noStroke();
  ellipse(100+rabbitX, 100+rabbitY, 50, 50);
  ellipse(110+rabbitX, 80+rabbitY, 15, 50);
  ellipse(90+rabbitX, 80+rabbitY, 15, 50);
  ellipse(130+rabbitX, 125+rabbitY, 80, 50);
  //legs
  ellipse(110+rabbitX, 145+rabbitY, 20, 20);
  ellipse(150+rabbitX, 145+rabbitY, 20, 20);
  //tail
  ellipse(170+rabbitX, 130+rabbitY, 20, 20);
  //eyes
  fill(0);
  ellipse(110+rabbitX, 95+rabbitY, 6, 6);
  ellipse(90+rabbitX, 95+rabbitY, 6, 6);
}
