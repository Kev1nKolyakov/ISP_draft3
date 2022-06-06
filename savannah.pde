void savannah() {
  background(213, 230, 224);
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=450 && mouseY<=500) {//if click right arrow, move to the right
    delay(200);
    isInside2=false;
    isInside3=true;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=450 && mouseY<=500) {//if click left arrow, move to the left
    delay(200);
    isInside2=false;
    isInside1=true;
  }
}
