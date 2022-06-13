//Name: Henry Zhang and Kevin Kolyakov
//Date: May 9
//Teacher: Ms.Basaraba
//Description: This program will tell is about exploring different ecosystems and learning about the animals and environment in each ecosystem.

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
int loadingX=100;//stores the movement of the loading bar
Boolean load=false;//detects when the loading bar has finished
float wolfX=0; //controls wolf x coordinate
float wolfY=200; //controls wolf y coordinate
float rabbitX=700; //controls rabbit x coordinate
float rabbitY=300; //controls rabbit y coordinate
Boolean rabbitAlive=true; //boolean variable that detects if rabbit is alive
float eelX=70;//stores the x value of the eel
float eelY=500;//stores the y value of the eel
float eelC=1;//stores the movement amount of the eel
float clownX=-200;//stores the x value of the clownfish
float clownY=250;//stores the y value of the clownfish
float turtleX=1000;//stores the x value of the turtle
float turtleY=400;//stores the y value of the turtle
float turtleC=2;//stores the movement amount of the turtle
boolean info;//stores info button was clicked
int bubbleY=600;//stores the y value of the bubble
float owlX=0;//stores the x value of the owl
float owlY=0;//stores the y value of the owl
float owlXC=5;//stores the x value change of the owl
float owlYC=5;//stores the y value change of the owl
float ratX=810;//stores the x value of the rat
Boolean ratAlive=true;//stores if the rat has been killed
int anglerX=700;//stores the x value of the anglerfish
int fishY=250;//stores the y value of the fishes
int anglerC=4;//is added to the x value to change the x position of the anglerfish
int lanternX=-200;//stores the x value of the anglerfish
int lanternC=2;//is added to the x value to change the x position of the lanternfish
int lanternTrans = 0;//stores the transparency of the anglerfish
int camelX=900;//stores the x value of the camel
int camelY=100;//stores the y value of the camel
int addaxX=250;//stores the x value of the addax
int addaxY=300;//stores the y value of the addax
int coyoteX=0;//controls x coordinate of coyote
int coyoteY=200;//controls y coordinate of coyote
int prairieX=50;//controls x coordinate of prairie dog
int prairieY=230;//controls y coordinate of prairie dog
Boolean coyoteClose=false;//used to detect if the coyote is close to the prairie dog
int elephantX=800;//controls x coordinate of elephant
int elephantY=340;//controls y coordinate of elephant
int elephantC=2;//controls change of the X coordinate of elephant
int lionX=850;//controls x coordinate of lion
int lionY=250;//controls y coordinate of lion
int lionC=0;//controls change of the X coordinate of lion
float pantherX = 800; //controls the x coordinate of the panther
float pantherY = 400; //controls the y coordinate of the panter
int pantherXC=3; //controls how quickly the panther moves along the x axis
Boolean close=false; //detects if the panther is close to the snake
float snakeX=100; //controls the x coordinate of the snake
float snakeY=2400; //controls the y coordinate of the snake
int hummingX = -400; //controls the x coordinate of the bird
int hummingY = 250; //controls the y coordinate of the bird
float hummingYC=1; //controls the direction that the bird goes along the y axis

void info() {
  PFont big = loadFont("Cambria-Bold-48.vlw");//for big font
  PFont small = loadFont("Cambria-Bold-28.vlw");//for small font
  stroke(0);
  strokeWeight(2);
  //shows text if the mouse is clicked inside the circle and it goes away if the button is clicked again
  if (dist(mouseX, mouseY, 40, 40) <= 25 && mousePressed) {
    delay(300);
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
      text("\n\n\n\nFun Fact:\nRainforests cover less than 3% of \nthe planet, yet they are home to more \nthan half our planet's species", 155, 180);
    } else if (isInside2) {
      textFont(big);
      text("Savanna", 150, 120);
      textFont(small);
      text("Animals: \n - Lion \n - Elephant", 155, 170);
      text("Temperature Range: \n 20° to 30°C", 390, 170);
      text("\n\n\n\nFun Fact:\nThe first human remains were found \nin a savanna called the Serengeti", 155, 170);
    } else if (isInside3) {
      textFont(big);
      text("Coniferous Forest", 150, 120);
      textFont(small);
      text("Animals: \n - Wolf \n - Rabbit", 155, 170);
      text("Temperature Range: \n -40° to 20°C", 390, 170);
      text("\n\n\n\nFun Fact:\nConiferous forests considered the \nlargest land-based biome, covering \nover 15% of Earth’s total land area", 155, 170);
    } else if (isInside4) {
      textFont(big);
      text("Desert", 150, 120);
      textFont(small);
      text("Animals: \n - Camel \n - Addax", 155, 170);
      text("Temperature Range: \n -5° to 40°C", 390, 170);
      text("\n\n\n\nFun Fact:\nAntarctica is the largest \ncold desert on Earth", 155, 170);
    } else if (isInside5) {
      textFont(big);
      text("Deciduous Forest", 150, 120);
      textFont(small);
      text("Animals: \n - Owl \n - Mouse", 155, 170);
      text("Temperature Range: \n -30° to 30°C", 390, 170);
      text("\n\n\n\nFun Fact:\nTrees in this deciduous forest change \ncolors every season because they stop \nproducing chlorophyll", 155, 170);
    } else if (isInside6) {  
      textFont(big);
      text("Coral Reef", 150, 120);
      textFont(small);
      text("Animals: \n - Clownfish \n - Sea Turtle \n - Eel \n - Coral", 155, 170);
      text("Temperature Range: \n 20° to 40°C", 390, 170);
      text("\n\n\n\n\nFun Fact:\nCoral reefs make up 1% of the ocean, \nbut they contain 25% of all marine life", 155, 170);
    } else if (isInside7) {
      textFont(big);
      text("Prairie", 150, 120);
      textFont(small);
      text("Animals: \n - Coyote \n - Prairie Dog", 155, 170);
      text("Temperature Range: \n -20° to 30°C", 390, 170);
      text("\n\n\n\nFun Fact:\nPrairies formed about 8,000 years ago", 155, 170);
    } else if (isInside8) {
      textFont(big);
      text("Deep Sea", 150, 120);
      textFont(small);
      text("Animals: \n - Lanternfish \n - Anglerfish", 155, 170);
      text("Temperature Range: \n -5° to 5°C", 390, 170);
      text("\n\n\n\nFun Fact:\nApproximately 98 percent of the \noceans' species live in, on or just above\nthe floor of the sea", 155, 170);
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
  text("Savanna", 120, 420);

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
    delay(300);
  }
}

void rightArrow() {
  rectMode(CENTER);
  fill(255);
  rect(730, 460, 60, 10);
  rectMode(CORNER);
  triangle(750, 445, 750, 475, 770, 460);
}

void leftArrow() {
  rectMode(CENTER);
  fill(255);
  rect(70, 460, 60, 10);
  rectMode(CORNER);
  triangle(50, 445, 50, 475, 30, 460);
}

//void setup
void setup() {
  size(800, 500);
  noStroke();
}

//void draw
void draw() {
  //println(frameRate);
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
    savanna();
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
      transparency+=3;//transparency decreases by 3 each time
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
    if (load==false) {//if the bar hasn't reached the end yet
      if (second()%4==0) {//every second the text switches between 4 different variants
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
    if (loadingX==600) {//if the rectangle is long enough
      load=true;//finished loading
    } else {
      loadingX+=2;//if not long enough, keep adding
    }
    fill(161, 214, 202, transparency);//covers the entire screen with the background of the menu
    rect(0, 0, 800, 500);
  }
}
