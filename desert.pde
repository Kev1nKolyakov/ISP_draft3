int camelX=900;//stores the x value of the camel
int camelY=100;//stores the y value of the camel
int addaxX=250;//stores the x value of the addax
int addaxY=300;//stores the y value of the addax

void desert() {
  desertBackground();
  camel();
  camelX-=2;//moves the camel left
  if (camelX==-100)//teleports the camel back
    camelX=900;
  addax();
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=450 && mouseY<=500) {//if click right arrow, move to the right
    delay(200);
    isInside4=false;
    isInside5=true;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=450 && mouseY<=500) {//if click left arrow, move to the left
    delay(200);
    isInside4=false;
    isInside3=true;
  }
}

void desertBackground() {
  background(242, 209, 160);

  //water
  fill(67, 184, 217);
  ellipse(200, 430, 80, 40);

  //cactus #1
  pushMatrix();
  translate(-300, 20);
  //cactus
  fill(23, 153, 68);
  ellipse(400, 250, 40, 100);
  //cactus arms
  rect(350, 220, 40, 15, 25);
  rect(350, 220, 15, 40, 25); 
  rect(410, 220, 40, 15, 25);
  rect(435, 190, 15, 40, 25); 
  //cactus flower
  fill(237, 52, 160);
  ellipse(400, 200, 20, 20);
  //sand under cactus
  fill(242, 209, 160);
  rect(375, 280, 50, 50);
  popMatrix();

  //cactus #2
  pushMatrix();
  translate(-50, -150);
  //cactus
  fill(23, 153, 68);
  ellipse(400, 250, 40, 100);
  //cactus arms
  rect(350, 220, 40, 15, 25);
  rect(350, 220, 15, 40, 25); 
  rect(410, 220, 40, 15, 25);
  rect(435, 190, 15, 40, 25); 
  //cactus flower
  fill(237, 52, 160);
  ellipse(400, 200, 20, 20);
  //sand under cactus
  fill(242, 209, 160);
  rect(375, 280, 50, 50);
  popMatrix();

  //cactus #3
  pushMatrix();
  translate(150, 150);
  //cactus
  fill(23, 153, 68);
  ellipse(400, 250, 40, 100);
  //cactus arms
  rect(350, 220, 40, 15, 25);
  rect(350, 220, 15, 40, 25); 
  rect(410, 220, 40, 15, 25);
  rect(435, 190, 15, 40, 25); 
  //cactus flower
  fill(237, 52, 160);
  ellipse(400, 200, 20, 20);
  //sand under cactus
  fill(242, 209, 160);
  rect(375, 280, 50, 50);
  popMatrix();
}

void addax() {
  noStroke();
  fill(235, 228, 197);
  //legs
  //back leg
  pushMatrix();
  translate(addaxX+100, addaxY+100);
  rotate(-QUARTER_PI);
  rect(0, 0, 20, 40, 25);
  popMatrix();
  rect(addaxX+120, addaxY+110, 20, 40, 25);
  //back hoof
  fill(0);
  rect(addaxX+120, addaxY+140, 20, 10, 25);
  //front leg
  fill(235, 228, 197);
  rect(addaxX+10, addaxY+90, 20, 60, 25);
  //front hoof
  fill(0);
  rect(addaxX+10, addaxY+140, 20, 10, 25);
  //body
  fill(235, 228, 197);
  rect(addaxX, addaxY, 150, 100, 25);
  //neck
  pushMatrix();
  translate(addaxX, addaxY+45);
  rotate(-QUARTER_PI);
  ellipse(0, 0, 150, 50);
  popMatrix();
  //horn behind head
  pushMatrix();
  translate(-20, 0);
  noFill();
  stroke(176, 168, 135);
  strokeWeight(5);
  arc(addaxX-40, addaxY+75, 20, 30, PI+HALF_PI, TWO_PI+HALF_PI);
  arc(addaxX-40, addaxY+45, 20, 30, HALF_PI, PI+HALF_PI);
  popMatrix();
  //head
  fill(235, 228, 197);
  noStroke();
  ellipse(addaxX-40, addaxY+95, 45, 65);
  //horns
  noFill();
  stroke(176, 168, 135);
  strokeWeight(5);
  arc(addaxX-40, addaxY+75, 20, 30, PI+HALF_PI, TWO_PI+HALF_PI);
  arc(addaxX-40, addaxY+45, 20, 30, HALF_PI, PI+HALF_PI);
  //eye
  stroke(0);
  point(addaxX-45, addaxY+105);
}

void camel() {
  //camel
  //hump
  fill(219, 166, 105);
  ellipse(camelX, camelY-30, 60, 60);
  //tails
  stroke(232, 169, 97);
  strokeWeight(5);
  noFill();
  arc(camelX+60, camelY+15, 50, 50, PI, TWO_PI);
  noStroke();
  fill(122, 88, 49);
  ellipse(camelX+85, camelY+15, 10, 20);
  //body
  noStroke();
  fill(232, 169, 97);
  ellipse(camelX, camelY, 130, 90);
  //feet
  fill(252, 191, 121);
  rect(camelX-55, camelY+90, 30, 10, 25);
  rect(camelX+5, camelY+90, 30, 10, 25);
  //lower legs
  fill(252, 191, 121);
  rect(camelX-35, camelY+50, 10, 50, 25);
  rect(camelX+25, camelY+50, 10, 50, 25);
  //legs
  fill(232, 169, 97);
  rect(camelX-40, camelY+30, 20, 50, 25);
  rect(camelX+20, camelY+30, 20, 50, 25);
  //neck
  ellipse(camelX-60, camelY, 70, 50);
  rect(camelX-95, camelY-70, 40, 80, 25);
  //head
  ellipse(camelX-90, camelY-60, 70, 30);
  fill(0);
  ellipse(camelX-80, camelY-60, 10, 10);
  //nose
  fill(181, 136, 85);
  ellipse(camelX-110, camelY-65, 8, 5);
  //mouth
  stroke(0);
  strokeWeight(1);
  line(camelX-125, camelY-58, camelX-115, camelY-58);
}
