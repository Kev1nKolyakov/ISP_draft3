//declaration section
boolean isInside1 = false;//each isInside variable determines which screen to switch to from the 8 animated screens
boolean isInside2 = false;
boolean isInside3 = false;
boolean isInside4 = false;
boolean isInside5 = false;
boolean isInside6 = false;
boolean isInside7 = false;
boolean isInside8 = false;
int transparency = 0;//stores the transparency of the splash screen
int loadingX=100;
Boolean load=false;

void info() {
  PFont big = loadFont("Cambria-Bold-48.vlw");//for big font
  PFont small = loadFont("Cambria-Bold-28.vlw");//for small font
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
      textFont(big);
      text("Tropical Forest", 150, 120);
      textFont(small);
      text("Animals: \n - Black Panther \n - Snake \n - Hummingbird", 155, 170);
      text("Temperature Range: \n 20° to 25°C", 390, 170);
    } else if (isInside2) {
      textFont(big);
      text("Savannah", 150, 120);
      textFont(small);
      text("Animals: \n - Lion \n - Elephant", 155, 170);
      text("Temperature Range: \n 20° to 30°C", 390, 170);
    } else if (isInside3) {
      textFont(big);
      text("Coniferous Forest", 150, 120);
      textFont(small);
      text("Animals: \n - Wolf \n - Rabbit", 155, 170);
      text("Temperature Range: \n -40° to 20°C", 390, 170);
    } else if (isInside4) {
      textFont(big);
      text("Desert", 150, 120);
      textFont(small);
      text("Animals: \n - Camel \n - Addax", 155, 170);
      text("Temperature Range: \n -5° to 40°C", 390, 170);
    } else if (isInside5) {
      textFont(big);
      text("Deciduous Forest", 150, 120);
      textFont(small);
      text("Animals: \n - Owl \n - Mouse", 155, 170);
      text("Temperature Range: \n -30° to 30°C", 390, 170);
    } else if (isInside6) {  
      textFont(big);
      text("Coral Reef", 150, 120);
      textFont(small);
      text("Animals: \n - Clownfish \n - Sea Turtle \n - Eel \n - Coral", 155, 170);
      text("Temperature Range: \n 20° to 40°C", 390, 170);
    } else if (isInside7) {
      textFont(big);
      text("Prairie", 150, 120);
      textFont(small);
      text("Animals: \n - Coyote \n - Prairie Dog", 155, 170);
      text("Temperature Range: \n -20° to 30°C", 390, 170);
    } else if (isInside8) {
      textFont(big);
      text("Deep Sea", 150, 120);
      textFont(small);
      text("Animals: \n - Lanternfish \n - Anglerfish", 155, 170);
      text("Temperature Range: \n -5° to 5°C", 390, 170);
    } else {
      textFont(big);
      text("Main Menu", 150, 120);
      textFont(small);
      text("Each info button will show\ninformation about the ecosystem\n", 155, 170);
      text("\n\n\nIn the ecosystems, use the \narrow keys to change the ecosystem", 155, 170);
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
  background(161, 214, 202);//background colour
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
    info=false;
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
    info=false;
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
    info=false;
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
    info=false;
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
    info=false;
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
    info=false;
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
    info=false;
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
    info=false;
  } else {
    isInside8 =false;
  }



  if (mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 75)
  {
    fill(196, 191, 181);
  } else {
    fill(255);
  }

  rect(700, 0, 800, 75);
  fill(0);
  text("Exit", 750, 40);

  if (mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 75 && mousePressed)
  {
    exit();
  }
  info();
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
    info=false;
    delay(200);
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
  println(frameRate);
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
      info=false;
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
      info=false;
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
      info=false;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside3=false;
      isInside2=true;
      info=false;
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
      info=false;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside4=false;
      isInside3=true;
      info=false;
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
      info=false;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside5=false;
      isInside4=true;
      info=false;
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
      info=false;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside6=false;
      isInside5=true;
      info=false;
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
      info=false;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside7=false;
      isInside6=true;
      info=false;
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
      info=false;
    }
  } else if (transparency == 255) {
    noStroke();
    menu();//if none of them are true the menu screen is always displayed
  } else {//splash screen
    background(200);
    if (load) {
      transparency+=3;
    }
    PFont big = loadFont("Cambria-Bold-48.vlw");//for big font
    PFont small = loadFont("Cambria-Bold-28.vlw");//for small font
    fill(0);
    textFont(big);
    text("                Made By:\n\nHenry Zhang & Kevin Kolyakov", 50, 200);
    fill(255);
    rect(100, 370, loadingX, 40);
    stroke(255);
    noFill();
    rect(90, 360, 620, 60);
    fill(0);
    textFont(small);
    if (load==false) {
      if (second()%4==0) {
        text("Loading.", 340, 400);
      } else if (second()%4==1) {
        text("Loading..", 340, 400);
      } else if (second()%4==2) {
        text("Loading...", 340, 400);
      } else {
        text("Loading", 340, 400);
      }
    }
    textAlign(LEFT);
    if (loadingX==600) {
      load=true;
    } else {
      loadingX+=10;
    }
    fill(161, 214, 202, transparency);
    rect(0, 0, 800, 500);
  }
}