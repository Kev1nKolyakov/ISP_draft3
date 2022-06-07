//declaration section
float eelX=70;//stores the x value of the eel
float eelY=500;//stores the y value of the eel
float eelC=1;//stores the movement amount of the eel
float clownX=-200;//stores the x value of the clownfish
float clownY=250;//stores the y value of the clownfish
float turtleX=1000;//stores the x value of the turtle
float turtleY=400;//stores the y value of the turtle
float turtleC=2;//stores the movement amount of the turtle
boolean info;//stores ifo button was clicked
int bubbleY=600;
int bubbleC=2;

void coral() {
  backgroundCoral();

  eel();

  //makes the turtle move up and left and then only left
  turtle();
  turtleX-=2;
  turtleY-=turtleC;
  if (turtleY==150)
    turtleC=0;
  if (turtleX==-200) {//makes the turtle go back to its original position
    turtleX=1000;
    turtleY=400;
    turtleC=2;
  }

  //draws the clownfishes in the different positions
  clown();
  pushMatrix();
  translate(-50, -20);
  clown();
  popMatrix();
  pushMatrix();
  translate(60, -20);
  clown();
  popMatrix();
  pushMatrix();
  translate(70, 40);
  clown();
  popMatrix();



  clownX+=4;
  if (clownX==900) {
    clownX=-200;
  }

  //eel moves up and slightly right
  eelY-=eelC;
  eelX+=eelC/2;
  if (eelX==120) {//if the x is 120 the eel goes back
    eelC=-1;
  }
  if (eelX==70) {//if the eel reaches its original position, the eel goes back up
    eelC=+1;
  }
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=450 && mouseY<=500) {//if click right arrow, move to the right
    delay(200);
    isInside6=false;
    isInside7=true;
    info=false;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=450 && mouseY<=500) {//if click left arrow, move to the left
    delay(200);
    isInside6=false;
    isInside5=true;
    info=false;
  }
}

void backgroundCoral() {
  //background of coral reef
  background(44, 181, 219);

  //coral
  fill(232, 35, 35);
  rect(650, 400, 200, 200, 20);
  //coral holes
  fill(44, 181, 219);
  ellipse(700, 400, 10, 10);
  ellipse(750, 420, 10, 10);
  ellipse(650, 440, 10, 10);
  ellipse(800, 480, 10, 10);
  ellipse(730, 490, 10, 10);
  ellipse(690, 460, 10, 10);
  ellipse(640, 480, 10, 10);
  ellipse(800, 430, 10, 10);
  pushMatrix();
  translate(-20, 15);
  ellipse(700, 400, 10, 10);
  ellipse(750, 420, 10, 10);
  ellipse(650, 440, 10, 10);
  ellipse(800, 480, 10, 10);
  ellipse(730, 490, 10, 10);
  ellipse(690, 460, 10, 10);
  ellipse(640, 480, 10, 10);
  ellipse(800, 430, 10, 10);
  popMatrix();

  //coral lines
  stroke(232, 35, 35);
  strokeWeight(10);
  line(750, 400, 750, 350);
  line(700, 470, 620, 470);
  line(720, 400, 720, 380);
  line(750, 450, 600, 450);


  //bubbles
  bubbleY-=bubbleC;
  stroke(255);
  strokeWeight(3);
  ellipse(400, bubbleY+10, 40, 40);
  fill(255);
  ellipse(405, bubbleY, 10, 10);

  if (bubbleY==250) {
    bubbleY=600;
  }

  //geiser
  noStroke();
  fill(77, 55, 52);
  ellipse(400, 500, 100, 50);
  fill(44, 181, 219);
  arc(400, 475, 20, 20, 0, PI);
}

//clownfish
void clown() {

  //tail
  strokeWeight(1);
  stroke(0);
  fill(242, 153, 10);
  ellipse(clownX-25, clownY, 15, 15);

  //fins
  ellipse(clownX-10, clownY-10, 15, 10);
  ellipse(clownX+4, clownY-10, 15, 13);

  //body
  noStroke();
  ellipse(clownX, clownY, 50, 25);

  //stripes
  stroke(255);
  strokeWeight(5);
  noFill();
  arc(clownX, clownY, 25, 27, PI+HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI);
  arc(clownX-20, clownY, 25, 27, PI+HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI);

  //eye
  stroke(0);
  strokeWeight(3);
  point(clownX+20, clownY-3);

  //body fin
  strokeWeight(1);
  fill(242, 153, 10);
  arc(clownX, clownY, 15, 15, HALF_PI, PI+HALF_PI, OPEN);
}

//eel
void eel() {
  noStroke();

  //body
  fill(83, 30, 143);
  ellipse(eelX, eelY, 150, 100);
  fill(136, 126, 148);
  ellipse(eelX+16, eelY, 135, 85);
  fill(44, 181, 219);
  ellipse(eelX+20, eelY, 135, 85);

  //head
  fill(83, 30, 143);
  ellipse(eelX+21, eelY-40, 50, 25);
  fill(83, 30, 143);
  ellipse(eelX+30, eelY-40, 40, 20);

  //mouth
  fill(235, 82, 169);
  triangle(eelX+21, eelY-35, eelX+50, eelY-38, eelX+43, eelY-30);

  //eye
  fill(255);
  ellipse(eelX+30, eelY-43, 9, 9);
  fill(0);
  ellipse(eelX+30, eelY-43, 4, 4);

  //head fin
  fill(136, 126, 148);
  arc(eelX-8, eelY-42, 15, 15, QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  stroke(0);
  strokeWeight(1);
  line(eelX-5, eelY-42, eelX-15, eelY-42);
  line(eelX-5, eelY-42, eelX-13, eelY-45);
  line(eelX-5, eelY-42, eelX-13, eelY-39);

  //tail fin
  fill(136, 126, 148);
  noStroke();
  ellipse(eelX+20, eelY+45, 70, 30);
  stroke(0);
  strokeWeight(1);
  line(eelX-15, eelY+45, eelX+40, eelY+45);
  line(eelX-15, eelY+45, eelX+35, eelY+35);
  line(eelX-15, eelY+45, eelX+35, eelY+55);
  line(eelX-15, eelY+45, eelX+20, eelY+32);
  line(eelX-15, eelY+45, eelX+20, eelY+58);

  //rocks
  pushMatrix();
  fill(132, 138, 118);
  translate(-400, 250);
  noStroke();
  quad(400, 250, 500, 250, 480, 200, 440, 200);
  quad(400+100, 250+50, 500+50, 250, 480+50, 200, 440+50, 200);
  quad(400-100, 250-50, 500-50, 250, 480-50, 200, 440+50, 20+200);
  popMatrix();
}

void turtle() {
  //body
  noStroke();
  fill(125, 219, 131);
  ellipse(turtleX, turtleY, 100, 70);
  //fins
  fill(57, 191, 54);
  pushMatrix();
  translate(turtleX+10, turtleY+10);
  rotate(QUARTER_PI);
  pushMatrix();
  translate(0, 72);
  arc(0, 0, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  arc(0, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  fill(57, 191, 54);
  pushMatrix();
  translate(turtleX+65, turtleY+5);
  rotate(QUARTER_PI);
  pushMatrix();
  translate(0, 72);
  arc(0, 0, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  arc(0, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  //shell
  fill(51, 150, 57);
  ellipse(turtleX, turtleY-7, 100, 60);

  //shell lines
  noFill();
  stroke(33, 122, 31);
  arc(turtleX-10, turtleY-7, 90, 60, PI+HALF_PI, TWO_PI+HALF_PI);
  stroke(23, 92, 21);
  noFill();
  stroke(33, 122, 31);
  arc(turtleX-40, turtleY-7, 90, 40, PI+HALF_PI, TWO_PI+HALF_PI);
  stroke(23, 92, 21);
  noFill();
  stroke(33, 122, 31);
  arc(turtleX-20, turtleY-7, 80, 50, PI+HALF_PI, TWO_PI+HALF_PI);
  line(turtleX-60, turtleY, turtleX+50, turtleY);
  line(turtleX-60, turtleY+10, turtleX+40, turtleY+10);
  line(turtleX-60, turtleY-10, turtleX+50, turtleY-10);
  line(turtleX-45, turtleY-20, turtleX+45, turtleY-20);
  stroke(23, 92, 21);
  noFill();
  strokeWeight(5);
  arc(turtleX, turtleY-7, 100, 60, 0, PI);

  //head
  noStroke();
  fill(57, 191, 54);
  arc(turtleX-60, turtleY-2, 40, 40, QUARTER_PI, HALF_PI+PI+QUARTER_PI, OPEN);
  //eye
  stroke(0);
  strokeWeight(5);
  point(turtleX-65, turtleY-5);
  //mouth
  fill(44, 181, 219);
  noStroke();
  arc(turtleX-80, turtleY-2, 20, 20, 0, PI);
}
