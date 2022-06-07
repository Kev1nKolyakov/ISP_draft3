int elephantX=400;//controls x coordinate of elephant
int elephantY=200;//controls y coordinate of elephant

void savannah() {
  background(213, 230, 224);
  info();
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
}

void elephant() {
  //body
  fill(141, 145, 145);
  noStroke();
  ellipse(elephantX, elephantY, 250, 180);
  //head
  ellipse(elephantX-130, elephantY-20, 120, 100);
  //trunk
  stroke(141, 145, 145);
  noFill();
  strokeWeight(20);
  arc(elephantX-200, elephantY-20, 100, 100, 0, HALF_PI+QUARTER_PI);
  //eye
  stroke(0);
  strokeWeight(15);
  point(elephantX-130, elephantY-40);
  strokeWeight(2);
  noFill();
  arc(elephantX-130, elephantY-40, 20, 20, PI+HALF_PI, PI+HALF_PI+QUARTER_PI);
  
}

void lion(){
  noStroke();
  fill(#EDA230);
  ellipse(100,110,90,90);
  fill(#D3BD4F);
  ellipse(100,100,60,60);
}
