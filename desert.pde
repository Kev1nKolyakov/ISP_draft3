int camelX=400;//stores the x value of the anglerfish
int camelY=250;//stores the y value of the fishes

void desert() {
  background(242, 209, 160);
  camel();
}

void camel() {
  //camel
  //hump
  fill(219, 166, 105);
  ellipse(camelX, camelY-30, 60, 60);
  //tail
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