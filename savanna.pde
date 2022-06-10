void savanna() {
  savBackground();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=450 && mouseY<=500) {//if click right arrow, move to the right
    delay(200);
    isInside2=false;
    isInside3=true;
    info=false;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=450 && mouseY<=500) {//if click left arrow, move to the left
    delay(200);
    isInside2=false;
    isInside1=true;
    info=false;
  }
  elephant();
  lion();
  info();
  
  //moves elephant and lion depending on lionC and elephantC
  elephantX-=elephantC;
  lionX-=lionC;

  //once the elephant reaches a certain point the lion will move onto the screen and elephant will move faster
  if (elephantX==250) {
    lionC=6;
    elephantC=7;
  }
  
  //teleports the elephant back and resets the speed
  if (elephantX<=-500) {
    elephantX=1000;
    elephantC=2;
  }
  
  //teleports the lion back
  if (lionX<=-300) {
    lionX=800;
    lionC=0;
  }
}


void savBackground() {
  for (int i = 0; i <= 400  ; i++) {
    stroke(lerpColor(color(#F2E7A4), color(#EDA837), map(i, 0, height, 0, 1)));
    line(0, i, width, i);
  }
  fill(#9FAF58);
  noStroke();
  rect(0,400,800,100);
  fill(#4D4022);
  pushMatrix();
  translate(110,-30);
  rect(550,300,30,150,100);
  rect(550,420,30,30);
  quad(560,320,580,310,450,250,440,250);
  quad(550,310,580,310,650,250,630,250);
  quad(510,290,525,295,570,250,560,250);
  fill(#538E1D);
  ellipse(500,250,200,30);
  ellipse(600,245,160,35);
  ellipse(540,250,100,35);
  popMatrix();
  
  pushMatrix();
  scale(0.8);
  translate(120,80);
  fill(#4D4022);
  rect(550,300,30,150,100);
  rect(550,420,30,30);
  quad(560,320,580,310,450,250,440,250);
  quad(550,310,580,310,650,250,630,250);
  quad(510,290,525,295,570,250,560,250);
  fill(#538E1D);
  ellipse(500,250,200,30);
  ellipse(600,245,160,35);
  ellipse(540,250,100,35);
  popMatrix();
}


void elephant() {
  pushMatrix();
  translate(300, 0);
  //body
  fill(141, 145, 145);
  noStroke();
  ellipse(elephantX, elephantY, 250, 180);
  //tail
  stroke(0);
  line(elephantX+120, elephantY, elephantX+150, elephantY);
  noStroke();
  fill(141, 145, 145);
  ellipse(elephantX+150, elephantY, 20, 10);
  //hind leg
  rect(elephantX+30, elephantY+50, 40, 100, 25);  
  //toes
  fill(189, 189, 189);
  ellipse(elephantX+40, elephantY+135, 10, 20);
  ellipse(elephantX+50, elephantY+135, 10, 20);
  ellipse(elephantX+60, elephantY+135, 10, 20);
  //front leg
  pushMatrix();
  translate(-100, 0);
  fill(141, 145, 145);
  rect(elephantX+30, elephantY+50, 40, 100, 25);
  //toes
  fill(189, 189, 189);
  ellipse(elephantX+40, elephantY+135, 10, 20);
  ellipse(elephantX+50, elephantY+135, 10, 20);
  ellipse(elephantX+60, elephantY+135, 10, 20);
  popMatrix();
  //head
  fill(141, 145, 145);
  ellipse(elephantX-130, elephantY-20, 120, 100);
  //trunk
  stroke(141, 145, 145);
  noFill();
  strokeWeight(20);
  arc(elephantX-200, elephantY-20, 100, 100, 0, HALF_PI+QUARTER_PI);
  //tusk
  stroke(255);
  triangle(elephantX-170, elephantY+20, elephantX-173, elephantY+20, elephantX-190, elephantY+40);
  //ear
  stroke(0);
  strokeWeight(5);
  fill(141, 145, 145);
  arc(elephantX-100, elephantY-20, 80, 90, PI+HALF_PI, TWO_PI+HALF_PI+QUARTER_PI);
  //eye
  stroke(0);
  strokeWeight(15);
  point(elephantX-130, elephantY-40);
  strokeWeight(2);
  noFill();
  arc(elephantX-130, elephantY-40, 20, 20, PI+HALF_PI, PI+HALF_PI+QUARTER_PI);
  popMatrix();
}

void lion() {
  noStroke();
  //body
  fill(#D3BD4F);
  beginShape();
  vertex(lionX+123, lionY+115);
  vertex(lionX+159, lionY+107);
  vertex(lionX+182, lionY+112);
  vertex(lionX+199, lionY+112);
  vertex(lionX+217, lionY+110);
  vertex(lionX+251, lionY+104);
  vertex(lionX+268, lionY+111);
  vertex(lionX+280, lionY+125);
  vertex(lionX+283, lionY+145);
  vertex(lionX+284, lionY+166);
  vertex(lionX+298, lionY+182);
  vertex(lionX+305, lionY+190);
  vertex(lionX+305, lionY+201);
  vertex(lionX+307, lionY+225);
  vertex(lionX+300, lionY+227);
  vertex(lionX+285, lionY+227);
  vertex(lionX+283, lionY+221);
  vertex(lionX+286, lionY+217);
  vertex(lionX+298, lionY+217);
  vertex(lionX+296, lionY+211);
  vertex(lionX+292, lionY+200);
  vertex(lionX+256, lionY+177);
  vertex(lionX+255, lionY+187);
  vertex(lionX+258, lionY+196);
  vertex(lionX+253, lionY+206);
  vertex(lionX+243, lionY+215);
  vertex(lionX+240, lionY+221);
  vertex(lionX+227, lionY+224);
  vertex(lionX+215, lionY+223);
  vertex(lionX+214, lionY+215);
  vertex(lionX+218, lionY+213);
  vertex(lionX+229, lionY+214);
  vertex(lionX+237, lionY+201);
  vertex(lionX+239, lionY+188);
  vertex(lionX+230, lionY+174);
  vertex(lionX+229, lionY+170);
  vertex(lionX+229, lionY+164);
  vertex(lionX+227, lionY+164);
  vertex(lionX+208, lionY+176);
  vertex(lionX+199, lionY+180);
  vertex(lionX+187, lionY+179);
  vertex(lionX+175, lionY+178);
  vertex(lionX+172, lionY+184);
  vertex(lionX+168, lionY+196);
  vertex(lionX+166, lionY+207);
  vertex(lionX+165, lionY+233);
  vertex(lionX+162, lionY+236);
  vertex(lionX+137, lionY+237);
  vertex(lionX+134, lionY+234);
  vertex(lionX+133, lionY+231);
  vertex(lionX+137, lionY+226);
  vertex(lionX+148, lionY+227);
  vertex(lionX+147, lionY+203);
  vertex(lionX+142, lionY+194);
  vertex(lionX+141, lionY+222);
  vertex(lionX+138, lionY+228);
  vertex(lionX+124, lionY+230);
  vertex(lionX+113, lionY+229);
  vertex(lionX+109, lionY+224);
  vertex(lionX+123, lionY+222);
  vertex(lionX+124, lionY+205);
  vertex(lionX+118, lionY+169);
  endShape();
  //tail
  noFill();
  stroke(#D3BD4F);
  strokeWeight(7);
  arc(lionX+260, lionY+90, 30, 50, PI+HALF_PI, TWO_PI+HALF_PI);
  noStroke();
  fill(#A5763C);
  ellipse(lionX+260, lionY+65, 12, 10);
  //mane
  fill(#EDA230);
  ellipse(lionX+120, lionY+120, 90, 95);
  //head
  fill(#D3BD4F);
  ellipse(lionX+120, lionY+120, 60, 60);
  //ears
  ellipse(lionX+136, lionY+95, 15, 15);
  ellipse(lionX+104, lionY+95, 15, 15);
  //eyes
  fill(0);
  ellipse(lionX+130, lionY+110, 8, 8);
  ellipse(lionX+110, lionY+110, 8, 8);
  //nose
  fill(#A5763C);
  triangle(lionX+120, lionY+120, lionX+125, lionY+127, lionX+115, lionY+127);
  //mouth
  stroke(0);
  strokeWeight(1);
  line(lionX+120, lionY+127, lionX+120, lionY+130);
  line(lionX+125, lionY+132, lionX+120, lionY+130);
  line(lionX+115, lionY+132, lionX+120, lionY+130);
  noStroke();
}