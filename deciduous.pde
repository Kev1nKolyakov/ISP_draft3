float owlX=0;
float owlY=0;
float owlXC=5;
float owlYC=5;
float ratX=810;
Boolean ratAlive=true;

void decBackground() {
  background(#1D2058);
  //branch
  fill(#865B27);
  ellipse(120, 200, 50, 50);
  rectMode(CENTER);
  rect(70, 200, 100, 50);
  //log
  rect(40, 200, 50, 400);
  rectMode(CORNER);
  //hole in the log
  fill(#2C271F);
  ellipse(50, 240, 20, 20);
  //leaves
  fill(#638969);
  ellipse(30, 5, 300, 100);
  //ground
  fill(#264B2B);
  rect(0, 380, 800, 120);
  //moon
  fill(#FFFEE3);
  ellipse(600, 100, 150, 150);
  fill(#1D2058);
  ellipse(630, 100, 120, 120);
}rr

void rat() {
  fill(200);
  arc(ratX, 380, 20, 20, PI, TWO_PI);
  ellipse(ratX-2, 370, 5, 5);
  stroke(200);
  line(ratX+5, 376, ratX+20, 370);
  noStroke();
  fill(0);
  ellipse(ratX-3, 376, 2, 2);
  if (ratX!=400) {
    ratX-=2;
  }
}

void owl() {
  //head
  fill(77, 63, 47);
  ellipse(owlX+125, owlY+100, 100, 60);
  //body
  fill(92, 84, 75);
  ellipse(owlX+125, owlY+140, 90, 80);
  //beak
  fill(217, 169, 59);
  triangle(owlX+125, owlY+130, owlX+140, owlY+110, owlX+110, owlY+110);
  //wings
  fill(77, 63, 47);
  pushMatrix();
  arc(owlX+90, owlY+140, 20, 70, PI+HALF_PI, TWO_PI+HALF_PI, CHORD);
  arc(owlX+90, owlY+140, 20, 70, HALF_PI, PI+HALF_PI, CHORD);
  popMatrix();
  pushMatrix();
  arc(owlX+160, owlY+140, 20, 70, PI+HALF_PI, TWO_PI+HALF_PI, CHORD);
  arc(owlX+160, owlY+140, 20, 70, HALF_PI, PI+HALF_PI, CHORD);
  popMatrix();
  //eyes
  fill(102, 88, 72);
  ellipse(owlX+100, owlY+100, 60, 60);
  ellipse(owlX+150, owlY+100, 60, 60);
  fill(255);
  ellipse(owlX+100, owlY+100, 50, 50);
  ellipse(owlX+150, owlY+100, 50, 50);
  //pupil
  fill(0);
  ellipse(owlX+150, owlY+100, 25, 25);
  ellipse(owlX+100, owlY+100, 25, 25);
  fill(255);
  ellipse(owlX+108, owlY+92, 15, 15);
  ellipse(owlX+158, owlY+92, 15, 15);
  //legs
  fill(217, 169, 59);
  ellipse(owlX+135, owlY+180, 10, 15);
  ellipse(owlX+115, owlY+180, 10, 15);

  if (ratX==400 && ratAlive) {
    owlX+=5;
    owlY+=5;
    if (owlX==280) {
      ratAlive=false;
      delay(1000);
    }
  } else if (ratX!= 400 & ratAlive) {
    owlX-=0;
    owlY-=0;
  } else if (ratAlive == false && owlX==0) {
    ratAlive=true;
    ratX=1800;
  } else {
    owlX-=5;
    owlY-=5;
  }
}

void deciduous() {
  noStroke();
  decBackground();
  if (ratAlive) {
    rat();
  }
  owl();
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=450 && mouseY<=500) {//if click right arrow, move to the right
    delay(200);
    isInside5=false;
    isInside6=true;
    info=false;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=450 && mouseY<=500) {//if click left arrow, move to the left
    delay(200);
    isInside5=false;
    isInside4=true;
    info=false;
  }
}
