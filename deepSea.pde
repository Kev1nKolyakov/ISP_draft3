void deepSea() {
  noStroke();
  background(7, 6, 36);
  lanternfish();
  lanternX+=lanternC;//moves the lanternfish right
  anglerFish();
  if (lanternX==300) {//stops the lanternfish infront of the angler
    lanternTrans= 255;
    lanternC=0;
    anglerX-=anglerC;//moves the angler to the lanternfish
    if (anglerX<=440) {//stops the angler and then erases the lanternfish
      background(7, 6, 36);
      anglerFish();
      if (anglerX==-200) {//when the angler moves off screen the variable values reset to its original position
        anglerC=4;
        anglerX=700;
        lanternX=-200;
        lanternC=2;
        lanternTrans=0;//resets the anglerfishes transparency
      }
    }
  }
  info();
  noStroke();
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=450 && mouseY<=500) {//if click left arrow, move to the left
    delay(200);
    isInside8=false;
    isInside7=true;
    info=false;
  }
}

void anglerFish() {

  //main body
  noStroke();
  fill(201, 146, 36, lanternTrans);
  arc(anglerX, fishY, 200, 200, -HALF_PI, PI);

  //teeth
  fill(255, lanternTrans);
  triangle(anglerX-100, fishY, anglerX-80, fishY, anglerX-90, fishY-60);
  triangle(anglerX-75, fishY, anglerX-65, fishY, anglerX-70, fishY-20);
  triangle(anglerX-50, fishY, anglerX-40, fishY, anglerX-45, fishY-40);
  triangle(anglerX-35, fishY, anglerX-15, fishY, anglerX-25, fishY-30);
  triangle(anglerX-10, fishY, anglerX-0, fishY, anglerX-5, fishY-20);

  //sideways teeth
  triangle(anglerX, fishY-100, anglerX, fishY-80, anglerX-60, fishY-90);
  triangle(anglerX, fishY-75, anglerX, fishY-65, anglerX-50, fishY-70);
  triangle(anglerX, fishY-50, anglerX, fishY-40, anglerX-40, fishY-45);

  //antenna
  noFill();
  stroke(201, 146, 36, lanternTrans);
  strokeWeight(15);
  arc(anglerX-50, fishY-80, 200, 150, PI, TWO_PI);
  strokeWeight(30);
  stroke(53, 190, 232);
  point(anglerX-150, fishY-80);

  //eye
  stroke(0, lanternTrans);
  point(anglerX+25, fishY-50);

  //tail
  noStroke();
  fill(201, 146, 36, lanternTrans);
  arc(anglerX+140, fishY, 150, 100, HALF_PI, PI+HALF_PI);
  stroke(125, 89, 17, lanternTrans);
  strokeWeight(10);
  line(anglerX+100, fishY+20, anglerX+130, fishY+20);
  line(anglerX+100, fishY, anglerX+125, fishY);
  line(anglerX+100, fishY-20, anglerX+130, fishY-20);
}

void lanternfish() {

  //body
  noStroke();
  fill(25, 71, 99);
  ellipse(lanternX+200, fishY-20, 100, 50);

  //mouth
  fill(7, 6, 36);
  triangle(lanternX+300, fishY-20, lanternX+230, fishY-15, lanternX+250, fishY);

  //eye
  fill(255);
  ellipse(lanternX+220, fishY-25, 17, 17);
  fill(0);
  ellipse(lanternX+220, fishY-25, 10, 10);

  //fins
  fill(25, 71, 99);
  triangle(lanternX+200, fishY-35, lanternX+200, fishY-65, lanternX+225, fishY-35);
  triangle(lanternX+220, fishY, lanternX+205, fishY, lanternX+210, fishY+10);

  //tail
  arc(lanternX+150, fishY-20, 20, 20, -HALF_PI, HALF_PI);
  stroke(13, 163, 255);
  line(lanternX+200, fishY-20, lanternX+170, fishY-20);
}