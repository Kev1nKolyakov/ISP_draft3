//declaration section
boolean isInside1 = false;//each isInside variable determines which screen to switch to from the 8 animated screens
boolean isInside2 = false;
boolean isInside3 = false;
boolean isInside4 = false;
boolean isInside5 = false;
boolean isInside6 = false;
boolean isInside7 = false;
boolean isInside8 = false;

void info() {
  stroke(0);
  strokeWeight(2);
  //shows text if the mouse is clicked inside the circle and it goes away if the button is clicked again
  if (dist(mouseX, mouseY, 40, 40) <= 25 && mousePressed) {
    delay(100);
    if (info) {
      info = false;
    } else {
      info = true;
    }
  } 
  if (info) {
    fill(255);
    rect(100, 50, 600, 400);
    textAlign(LEFT);
    fill(0);
    if (isInside1) {
      text("woww its a tropical forest", 200, 200);
    } else if (isInside2) {
      text("woww its a savannah", 200, 200);
    } else if (isInside3) {
      text("woww its a coniferous forest", 200, 200);
    } else if (isInside4) {
      text("woww its a desert", 200, 200);
    } else if (isInside5) {
      text("woww its a deciduous forest", 200, 200);
    } else if (isInside6) {
      text("woww its a coral reef", 200, 200);
    } else if (isInside7) {
      text("woww its a prairie", 200, 200);
    } else if (isInside8) {
      text("woww its a deep sea", 200, 200);
    }
    textAlign(CENTER, CENTER);
  }
  fill(46, 90, 201);
  // Change colour of circle depending on collision
  if (dist(mouseX, mouseY, 40, 40) <= 25) {
    fill(3, 46, 153);
  }
  ellipse(40, 40, 50, 50);
  fill(255);
  text("i", 40, 40);
}


void menu() {
  PFont big = loadFont("Cambria-Bold-48.vlw");//for big font
  PFont small = loadFont("Cambria-Bold-28.vlw");//for small font
  background(171, 167, 161);//background colour
  textFont(big);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Exploring Ecosystems:", 400, 100);//title
  textFont(small);
  text("\n\n\nBy: Henry Zhang and Kevin Kolyakov", 400, 100);//authors
  text("Ecosystems:", 400, 250);//subtitle

  //buttons
  if (mouseX > 50 && mouseX < 200 && mouseY >280 && mouseY < 355) {//the colour of the button changes if it inside the button depending on the x and y values of the coordinates
    fill(54, 240, 12);
  } else {
    fill(255);
  }

  //button
  rect(50, 280, 150, 75, 15);
  fill(0);
  text("Tropical\nForest", 120, 320);

  if (mouseX > 50 && mouseX < 200 && mouseY >280 && mouseY < 355 && mousePressed)//the screen changes if it inside the button depending on the x and y values of the coordinates and the user clicks
  {
    isInside1 =true;
  } else {
    isInside1=false;
  }

  if (mouseX > 50 && mouseX < 200 && mouseY > 380 && mouseY < 455)
  {
    fill(227, 182, 18);
  } else {
    fill(255);
  }

  rect(50, 380, 150, 75, 15);
  fill(0);
  text("Savannah", 120, 420);

  if (mouseX > 50 && mouseX < 200 && mouseY > 380 && mouseY < 455 && mousePressed)
  {
    isInside2 =true;
  } else {
    isInside2=false;
  }

  if (mouseX > 250 && mouseX < 400 && mouseY > 280 && mouseY < 355)
  {
    fill(33, 140, 11);
  } else {
    fill(255);
  }

  rect(250, 280, 150, 75, 15);
  fill(0);
  text("Coniferous\nForest", 325, 320);

  if (mouseX > 250 && mouseX < 400 && mouseY >280 && mouseY < 355 && mousePressed)
  {
    isInside3 =true;
  } else {
    isInside3=false;
  }

  if (mouseX > 250 && mouseX < 400 && mouseY >380 && mouseY < 455)
  {
    fill(232, 185, 104);
  } else {
    fill(255);
  }

  rect(250, 380, 150, 75, 15);
  fill(0);
  text("Desert", 325, 420);

  if (mouseX > 250 && mouseX < 400 && mouseY >380 && mouseY < 455 && mousePressed)
  {
    isInside4 =true;
  } else {
    isInside4 =false;
  }

  if (mouseX > 450 && mouseX < 600 && mouseY >280 && mouseY < 355)
  {
    fill(46, 184, 101);
  } else {
    fill(255);
  }

  rect(450, 280, 150, 75, 15);
  fill(0);
  text("Deciduous\nForest", 523, 320);

  if (mouseX > 450 && mouseX < 600 && mouseY >280 && mouseY < 355 && mousePressed)
  {
    isInside5 =true;
  } else {
    isInside5 =false;
  }

  if (mouseX > 450 && mouseX < 600 && mouseY >380 && mouseY < 455)
  {
    fill(63, 200, 235);
  } else {
    fill(255);
  }


  rect(450, 380, 150, 75, 15);
  fill(0);
  text("Coral Reef", 523, 420);

  if (mouseX > 450 && mouseX < 600 && mouseY >380 && mouseY < 455 && mousePressed)
  {
    isInside6 =true;
  } else {
    isInside6 =false;
  }

  if (mouseX > 630 && mouseX < 780 && mouseY >280 && mouseY < 355)
  {
    fill(223, 232, 60);
  } else {
    fill(255);
  }

  rect(630, 280, 150, 75, 15);
  fill(0);
  text("Prairie", 700, 320);

  if (mouseX > 630 && mouseX < 780 && mouseY >280 && mouseY < 355 && mousePressed)
  {
    isInside7 =true;
  } else {
    isInside7 =false;
  }

  if (mouseX > 630 && mouseX < 780 && mouseY >380 && mouseY < 455)
  {
    fill(18, 58, 128);
  } else {
    fill(255);
  }

  rect(630, 380, 150, 75, 15);
  fill(0);
  text("Deep Sea", 700, 420);

  if (mouseX > 630 && mouseX < 780 && mouseY >380 && mouseY < 455 && mousePressed)
  {
    isInside8 =true;
  } else {
    isInside8 =false;
  }


  if (mouseX > 0 && mouseX < 90 && mouseY > 0 && mouseY < 75)
  {
    fill(196, 191, 181);
  } else {
    fill(255);
  }

  rect(0, 0, 90, 75);
  fill(0);
  text("Exit", 40, 40);

  if (mouseX > 0 && mouseX < 90 && mouseY > 0 && mouseY < 75 && mousePressed)
  {
    exit();
  }
}

void menuReturn() {
  //menu button
  if (mouseX > 720 && mouseX < 800 && mouseY > 0 && mouseY < 75)
  {
    fill(196, 191, 181);
  } else {
    fill(255);
  }

  rect(720, 0, 90, 75);
  fill(0);
  text("Menu", 760, 40);

  if (mouseX > 720 && mouseX < 800 && mouseY > 0 && mouseY < 75 && mousePressed)//menu button returns back to the menu by making all the variables false
  {
    isInside1 = false;
    isInside2 = false;
    isInside3 = false;
    isInside4 = false;
    isInside5 = false;
    isInside6 = false;
    isInside7 = false;
    isInside8 = false;
  }
}

void rightArrow() {
  //drawing of right arrow
  strokeWeight(3);
  stroke(255, 255, 255);
  line(700, 475, 770, 475);
  line(750, 450, 770, 475);
  line(750, 500, 770, 475);
}

void leftArrow() {
  //drawing of left arrow
  strokeWeight(3);
  stroke(255, 255, 255);
  line(30, 475, 100, 475);
  line(50, 450, 30, 475);
  line(50, 500, 30, 475);
}

//void setup
void setup() {
  size(800, 500);
  noStroke();
}

//void draw
void draw() {
  if (isInside1) {//changes the screen from the menu to an ecosystem
    tropForest();
    noStroke();
    menuReturn();
    rightArrow();
    noStroke();
    if ( keyPressed && keyCode == RIGHT) {//if the right arrow is pressed the screen changes to the next ecosystem
      delay(200);
      isInside1=false;
      isInside2=true;
    }
  } else if (isInside2) {
    savannah();
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside2=false;
      isInside3=true;
    }
    if (keyCode == LEFT && keyPressed == true) {//if the left arrow is pressed the screen changes to the previous ecosystem
      delay(200);
      isInside2=false;
      isInside1=true;
    }
  } else if (isInside3) {
    coniferous();  
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside3=false;
      isInside4=true;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside3=false;
      isInside2=true;
    }
  } else if (isInside4) {
    desert();
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside4=false;
      isInside5=true;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside4=false;
      isInside3=true;
    }
  } else if (isInside5) {
    deciduous();
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside5=false;
      isInside6=true;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside5=false;
      isInside4=true;
    }
  } else if (isInside6) {
    coral();
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside6=false;
      isInside7=true;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside6=false;
      isInside5=true;
    }
  } else if (isInside7) {
    prairie();
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside7=false;
      isInside8=true;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside7=false;
      isInside6=true;
    }
  } else if (isInside8) {
    deepSea();
    noStroke();
    menuReturn();
    leftArrow();
    noStroke();
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside8=false;
      isInside7=true;
    }
  } else {
    noStroke();
    menu();//if none of them are true the menu screen is alwaus displayed
  }
}
