void prairie() {
  noStroke();
  prairieBackground();
  coyote();
  prairieDog();
  coyoteX+=5;
  if (coyoteX==1200) {//detects if the coyote is far enough off the screen
    coyoteX=-300;//teleports it back to the other side
  }
  if (coyoteX==100) {//detects if the coyote is close to the prairie dog
    coyoteClose=true;//changes the boolean value
  }
  if (coyoteClose && prairieY!=350) {//if the coyote is close and the prairie dog hasn't finished hiding
    prairieY+=4;//prairie dog goes under
  }
  if (coyoteClose==false && prairieY!=230) {//if the coyote is not close anymore and the prairie dog isn't fully up
    prairieY-=4;//prairie dog goes back up
  }
  if (coyoteX==550) {//if the coyote goes past the prairie dog
    coyoteClose=false;//changes the boolean value
  }
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=450 && mouseY<=500) {//if click right arrow, move to the right
    delay(200);
    isInside7=false;
    isInside8=true;
    info=false;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=450 && mouseY<=500) {//if click left arrow, move to the left
    delay(200);
    isInside7=false;
    isInside6=true;
    info=false;
  }
}

void prairieBackground() {
  background(#9DCFD8);//sky
  fill(#F5D848);
  ellipse(600, 100, 100, 100);//sun
}

void coyote() {
  fill(#6C5838);
  beginShape();//outline of coyote
  vertex(coyoteX+191, coyoteY+96);
  vertex(coyoteX+217, coyoteY+58);
  vertex(coyoteX+232, coyoteY+48);
  vertex(coyoteX+241, coyoteY+37);
  vertex(coyoteX+244, coyoteY+43);
  vertex(coyoteX+251, coyoteY+35);
  vertex(coyoteX+253, coyoteY+55);
  vertex(coyoteX+263, coyoteY+61);
  vertex(coyoteX+268, coyoteY+73);
  vertex(coyoteX+293, coyoteY+81);
  vertex(coyoteX+288, coyoteY+97);
  vertex(coyoteX+261, coyoteY+98);
  vertex(coyoteX+256, coyoteY+116);
  vertex(coyoteX+228, coyoteY+163);
  vertex(coyoteX+208, coyoteY+179);
  vertex(coyoteX+202, coyoteY+244);
  vertex(coyoteX+212, coyoteY+249);
  vertex(coyoteX+218, coyoteY+259);
  vertex(coyoteX+191, coyoteY+260);
  vertex(coyoteX+179, coyoteY+239);
  vertex(coyoteX+174, coyoteY+177);
  vertex(coyoteX+141, coyoteY+174);
  vertex(coyoteX+115, coyoteY+162);
  vertex(coyoteX+93, coyoteY+191);
  vertex(coyoteX+70, coyoteY+213);
  vertex(coyoteX+78, coyoteY+245);
  vertex(coyoteX+88, coyoteY+251);
  vertex(coyoteX+96, coyoteY+256);
  vertex(coyoteX+86, coyoteY+263);
  vertex(coyoteX+67, coyoteY+257);
  vertex(coyoteX+60, coyoteY+248);
  vertex(coyoteX+55, coyoteY+248);
  vertex(coyoteX+43, coyoteY+202);
  vertex(coyoteX+57, coyoteY+159);
  vertex(coyoteX+48, coyoteY+143);
  vertex(coyoteX+49, coyoteY+125);
  vertex(coyoteX+44, coyoteY+175);
  vertex(coyoteX+33, coyoteY+190);
  vertex(coyoteX+21, coyoteY+207);
  vertex(coyoteX+7, coyoteY+218);
  vertex(coyoteX+5, coyoteY+177);
  vertex(coyoteX+23, coyoteY+131);
  vertex(coyoteX+49, coyoteY+101);
  vertex(coyoteX+93, coyoteY+91);
  vertex(coyoteX+145, coyoteY+98);
  endShape(CLOSE);
  fill(0);
  beginShape();//eye
  vertex(coyoteX+266, coyoteY+68);
  vertex(coyoteX+260, coyoteY+73);
  vertex(coyoteX+269, coyoteY+73);
  endShape();
  beginShape();//nose
  vertex(coyoteX+284, coyoteY+78);
  vertex(coyoteX+293, coyoteY+80);
  vertex(coyoteX+291, coyoteY+87);
  endShape();
}

void prairieDog() {
  fill(#FAD9A4);
  //head
  ellipse(prairieX+495, prairieY+100, 60, 50);
  //body
  ellipse(prairieX+498, prairieY+150, 55, 100);
  rectMode(CENTER);
  rect(prairieX+500, prairieY+150, 50, 100);
  //ear
  ellipse(prairieX+515, prairieY+80, 15, 15);
  //feet
  ellipse(prairieX+520, prairieY+200, 15, 20);
  ellipse(prairieX+480, prairieY+200, 15, 20);
  //tail
  rect(prairieX+530, prairieY+180, 70, 15, 100);
  rectMode(CORNER);
  fill(#6C4F20);
  //tip of tail
  arc(prairieX+560, prairieY+180, 15, 15, PI+HALF_PI, TWO_PI+HALF_PI);
  fill(0);
  //eye
  ellipse(prairieX+495, prairieY+95, 10, 10);
  //belly
  fill(#FFEAC9);
  ellipse(prairieX+487, prairieY+150, 25, 60);
  //nose
  fill(#5F410F);
  ellipse(prairieX+474, prairieY+100, 6, 6);
  strokeWeight(1);
  stroke(1);
  //mouth
  line(prairieX+473, prairieY+103, prairieX+473, prairieY+108);
  line(prairieX+470, prairieY+108, prairieX+476, prairieY+108);
  noStroke();
  //grass
  fill(#316F35);
  rect(0, 450, 800, 50);//the grass is in the prairie dog method because the prairie dog needs to hide behind the grass
  //mound
  fill(#6C543C);
  arc(prairieX+500, 480, 200, 100, PI+(QUARTER_PI/4), TWO_PI-(QUARTER_PI/4), OPEN);
}