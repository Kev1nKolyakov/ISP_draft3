float pantherX = 800; //controls the x coordinate of the panther
float pantherY = 400; //controls the y coordinate of the panter
int pantherXC=3; //controls how quickly the panther moves along the x axis
Boolean close=false; //detects if the panther is close to the snake
float snakeX=100; //controls the x coordinate of the snake
float snakeY=2400; //controls the y coordinate of the snake
int hummingX = -400; //controls the x coordinate of the bird
int hummingY = 250; //controls the y coordinate of the bird
float hummingYC=1; //controls the direction that the bird goes along the y axis

void tropBackground() {
  background(31, 63, 48);
  //background trees
  fill(42, 79, 62);
  rect(100, 0, 20, 500);
  quad(200, 0, 250, 0, 300, 500, 250, 500);
  quad(470, 0, 440, 0, 420, 500, 450, 500);
  quad(600, 0, 650, 0, 700, 500, 650, 500);
  //leaves
  fill(74, 183, 76); 
  pushMatrix();
  rotate(radians(-20));
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  fill(19, 129, 67);
  pushMatrix();
  rotate(radians(40));
  translate(50, -120);
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  pushMatrix();
  scale(1.5);
  translate(70, 0);
  rotate(radians(-20));
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  fill(74, 183, 76);
  pushMatrix();
  scale(1.3);
  rotate(radians(40));
  translate(90, -160);
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  pushMatrix();
  rotate(radians(40));
  translate(320, -340);
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  fill(19, 129, 67);
  pushMatrix();
  rotate(radians(-20));
  translate(500, 180);
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  pushMatrix();
  rotate(radians(-20));
  translate(330, 120);
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  //ground
  fill(74, 183, 76);
  ellipse(150, 450, 600, 150);
  ellipse(580, 450, 600, 150);
}

void panther() { //method uesd for the panther moving to the left
  pushMatrix();
  scale(0.5);
  pantherX-=pantherXC;
  pantherY = 400;
  if (pantherX<=200) {//detects if panther has reached close enough to the snake
    close=true; //changes boolean value, used later
    pantherXC*=-4; //changes the speed and direction that the panther moves
  }
  //panther
  fill(31, 28, 24);
  beginShape();
  vertex(pantherX+49, pantherY+148);
  vertex(pantherX+55, pantherY+148);
  vertex(pantherX+63, pantherY+153);
  vertex(pantherX+84, pantherY+154);
  vertex(pantherX+112, pantherY+155);
  vertex(pantherX+122, pantherY+151);
  vertex(pantherX+128, pantherY+145);
  vertex(pantherX+134, pantherY+145);
  vertex(pantherX+140, pantherY+148);
  vertex(pantherX+140, pantherY+164);
  vertex(pantherX+180, pantherY+166);
  vertex(pantherX+188, pantherY+164);
  vertex(pantherX+195, pantherY+167);
  vertex(pantherX+273, pantherY+180);
  vertex(pantherX+317, pantherY+170);
  vertex(pantherX+343, pantherY+164);
  vertex(pantherX+396, pantherY+162);
  vertex(pantherX+437, pantherY+163);
  vertex(pantherX+466, pantherY+169);
  vertex(pantherX+548, pantherY+196);
  vertex(pantherX+583, pantherY+203);
  vertex(pantherX+629, pantherY+202);
  vertex(pantherX+648, pantherY+198);
  vertex(pantherX+666, pantherY+193);
  vertex(pantherX+678, pantherY+192);
  vertex(pantherX+688, pantherY+187);
  vertex(pantherX+699, pantherY+181);
  vertex(pantherX+709, pantherY+177);
  vertex(pantherX+720, pantherY+170);
  vertex(pantherX+729, pantherY+162);
  vertex(pantherX+738, pantherY+154);
  vertex(pantherX+747, pantherY+144);
  vertex(pantherX+755, pantherY+133);
  vertex(pantherX+760, pantherY+120);
  vertex(pantherX+763, pantherY+108);
  vertex(pantherX+764, pantherY+92);
  vertex(pantherX+759, pantherY+74);
  vertex(pantherX+750, pantherY+71);
  vertex(pantherX+749, pantherY+62);
  vertex(pantherX+755, pantherY+53);
  vertex(pantherX+768, pantherY+53);
  vertex(pantherX+775, pantherY+60);
  vertex(pantherX+782, pantherY+80);
  vertex(pantherX+783, pantherY+93);
  vertex(pantherX+782, pantherY+108);
  vertex(pantherX+778, pantherY+125);
  vertex(pantherX+774, pantherY+133);
  vertex(pantherX+769, pantherY+142);
  vertex(pantherX+765, pantherY+148);
  vertex(pantherX+762, pantherY+154);
  vertex(pantherX+757, pantherY+162);
  vertex(pantherX+753, pantherY+167);
  vertex(pantherX+744, pantherY+173);
  vertex(pantherX+739, pantherY+178);
  vertex(pantherX+730, pantherY+184);
  vertex(pantherX+724, pantherY+192);
  vertex(pantherX+714, pantherY+196);
  vertex(pantherX+707, pantherY+200);
  vertex(pantherX+699, pantherY+204);
  vertex(pantherX+688, pantherY+208);
  vertex(pantherX+678, pantherY+215);
  vertex(pantherX+669, pantherY+218);
  vertex(pantherX+640, pantherY+224);
  vertex(pantherX+625, pantherY+226);
  vertex(pantherX+574, pantherY+228);
  vertex(pantherX+549, pantherY+228);
  vertex(pantherX+538, pantherY+232);
  vertex(pantherX+558, pantherY+293);
  vertex(pantherX+585, pantherY+353);
  vertex(pantherX+598, pantherY+366);
  vertex(pantherX+610, pantherY+366);
  vertex(pantherX+617, pantherY+372);
  vertex(pantherX+635, pantherY+429);
  vertex(pantherX+646, pantherY+452);
  vertex(pantherX+645, pantherY+459);
  vertex(pantherX+625, pantherY+470);
  vertex(pantherX+617, pantherY+474);
  vertex(pantherX+602, pantherY+472);
  vertex(pantherX+601, pantherY+454);
  vertex(pantherX+616, pantherY+452);
  vertex(pantherX+619, pantherY+447);
  vertex(pantherX+618, pantherY+440);
  vertex(pantherX+600, pantherY+411);
  vertex(pantherX+595, pantherY+403);
  vertex(pantherX+585, pantherY+397);
  vertex(pantherX+521, pantherY+373);
  vertex(pantherX+499, pantherY+358);
  vertex(pantherX+491, pantherY+351);
  vertex(pantherX+488, pantherY+345);
  vertex(pantherX+480, pantherY+310);
  vertex(pantherX+467, pantherY+330);
  vertex(pantherX+467, pantherY+359);
  vertex(pantherX+481, pantherY+393);
  vertex(pantherX+480, pantherY+406);
  vertex(pantherX+443, pantherY+455);
  vertex(pantherX+435, pantherY+461);
  vertex(pantherX+395, pantherY+465);
  vertex(pantherX+386, pantherY+459);
  vertex(pantherX+384, pantherY+454);
  vertex(pantherX+389, pantherY+446);
  vertex(pantherX+400, pantherY+440);
  vertex(pantherX+406, pantherY+441);
  vertex(pantherX+418, pantherY+443);
  vertex(pantherX+439, pantherY+416);
  vertex(pantherX+442, pantherY+410);
  vertex(pantherX+416, pantherY+369);
  vertex(pantherX+404, pantherY+347);
  vertex(pantherX+395, pantherY+316);
  vertex(pantherX+393, pantherY+308);
  vertex(pantherX+394, pantherY+276);
  vertex(pantherX+379, pantherY+284);
  vertex(pantherX+365, pantherY+291);
  vertex(pantherX+343, pantherY+308);
  vertex(pantherX+294, pantherY+318);
  vertex(pantherX+266, pantherY+330);
  vertex(pantherX+252, pantherY+331);
  vertex(pantherX+253, pantherY+350);
  vertex(pantherX+251, pantherY+437);
  vertex(pantherX+247, pantherY+459);
  vertex(pantherX+232, pantherY+466);
  vertex(pantherX+199, pantherY+474);
  vertex(pantherX+187, pantherY+477);
  vertex(pantherX+181, pantherY+476);
  vertex(pantherX+180, pantherY+471);
  vertex(pantherX+177, pantherY+470);
  vertex(pantherX+173, pantherY+461);
  vertex(pantherX+176, pantherY+452);
  vertex(pantherX+188, pantherY+440);
  vertex(pantherX+219, pantherY+443);
  vertex(pantherX+224, pantherY+433);
  vertex(pantherX+220, pantherY+407);
  vertex(pantherX+206, pantherY+372);
  vertex(pantherX+204, pantherY+351);
  vertex(pantherX+199, pantherY+351);
  vertex(pantherX+182, pantherY+371);
  vertex(pantherX+155, pantherY+397);
  vertex(pantherX+129, pantherY+412);
  vertex(pantherX+123, pantherY+423);
  vertex(pantherX+117, pantherY+430);
  vertex(pantherX+106, pantherY+445);
  vertex(pantherX+94, pantherY+456);
  vertex(pantherX+74, pantherY+467);
  vertex(pantherX+60, pantherY+467);
  vertex(pantherX+52, pantherY+460);
  vertex(pantherX+52, pantherY+439);
  vertex(pantherX+65, pantherY+427);
  vertex(pantherX+83, pantherY+412);
  vertex(pantherX+104, pantherY+385);
  vertex(pantherX+118, pantherY+363);
  vertex(pantherX+137, pantherY+341);
  vertex(pantherX+137, pantherY+331);
  vertex(pantherX+128, pantherY+303);
  vertex(pantherX+128, pantherY+281);
  vertex(pantherX+116, pantherY+265);
  vertex(pantherX+100, pantherY+253);
  vertex(pantherX+92, pantherY+258);
  vertex(pantherX+73, pantherY+260);
  vertex(pantherX+59, pantherY+248);
  vertex(pantherX+56, pantherY+218);
  vertex(pantherX+49, pantherY+212);
  vertex(pantherX+48, pantherY+200);
  vertex(pantherX+48, pantherY+189);
  vertex(pantherX+52, pantherY+176);
  vertex(pantherX+45, pantherY+157);
  vertex(pantherX+47, pantherY+148);
  vertex(pantherX+55, pantherY+147);
  endShape();
  //eyes
  fill(209, 206, 119);
  ellipse(pantherX+70, pantherY+195, 13, 9);
  ellipse(pantherX+105, pantherY+195, 15, 10);
  popMatrix();
}
void panther2() { //function used for panther moving to the right
  pushMatrix();
  scale(0.5);
  pantherX-=pantherXC;
  pantherY = 400; 
  if (pantherX>=2600) {//detects if the panther has gone far enough
    pantherXC*=-0.25;//changes the speed and direction of the panther
    close=false;//changes boolean value, used later
  }
  //panther
  fill(31, 28, 24);
  beginShape();
  vertex(pantherX+668, pantherY+146);
  vertex(pantherX+682, pantherY+161);
  vertex(pantherX+686, pantherY+156);
  vertex(pantherX+700, pantherY+153);
  vertex(pantherX+715, pantherY+155);
  vertex(pantherX+726, pantherY+160);
  vertex(pantherX+743, pantherY+149);
  vertex(pantherX+749, pantherY+147);
  vertex(pantherX+753, pantherY+155);
  vertex(pantherX+750, pantherY+169);
  vertex(pantherX+746, pantherY+177);
  vertex(pantherX+746, pantherY+185);
  vertex(pantherX+750, pantherY+189);
  vertex(pantherX+749, pantherY+211);
  vertex(pantherX+743, pantherY+220);
  vertex(pantherX+740, pantherY+248);
  vertex(pantherX+732, pantherY+257);
  vertex(pantherX+726, pantherY+257);
  vertex(pantherX+708, pantherY+257);
  vertex(pantherX+700, pantherY+251);
  vertex(pantherX+682, pantherY+264);
  vertex(pantherX+670, pantherY+281);
  vertex(pantherX+670, pantherY+302);
  vertex(pantherX+662, pantherY+328);
  vertex(pantherX+662, pantherY+342);
  vertex(pantherX+716, pantherY+413);
  vertex(pantherX+746, pantherY+440);
  vertex(pantherX+747, pantherY+453);
  vertex(pantherX+746, pantherY+461);
  vertex(pantherX+738, pantherY+468);
  vertex(pantherX+725, pantherY+467);
  vertex(pantherX+706, pantherY+455);
  vertex(pantherX+692, pantherY+443);
  vertex(pantherX+692, pantherY+436);
  vertex(pantherX+683, pantherY+431);
  vertex(pantherX+677, pantherY+422);
  vertex(pantherX+671, pantherY+412);
  vertex(pantherX+647, pantherY+398);
  vertex(pantherX+617, pantherY+372);
  vertex(pantherX+601, pantherY+352);
  vertex(pantherX+594, pantherY+351);
  vertex(pantherX+593, pantherY+371);
  vertex(pantherX+580, pantherY+406);
  vertex(pantherX+576, pantherY+430);
  vertex(pantherX+579, pantherY+443);
  vertex(pantherX+592, pantherY+446);
  vertex(pantherX+612, pantherY+439);
  vertex(pantherX+623, pantherY+450);
  vertex(pantherX+625, pantherY+462);
  vertex(pantherX+623, pantherY+468);
  vertex(pantherX+617, pantherY+474);
  vertex(pantherX+600, pantherY+474);
  vertex(pantherX+567, pantherY+468);
  vertex(pantherX+552, pantherY+459);
  vertex(pantherX+547, pantherY+437);
  vertex(pantherX+545, pantherY+367);
  vertex(pantherX+546, pantherY+346);
  vertex(pantherX+547, pantherY+330);
  vertex(pantherX+534, pantherY+330);
  vertex(pantherX+504, pantherY+316);
  vertex(pantherX+480, pantherY+315);
  vertex(pantherX+457, pantherY+306);
  vertex(pantherX+434, pantherY+291);
  vertex(pantherX+421, pantherY+284);
  vertex(pantherX+406, pantherY+277);
  vertex(pantherX+409, pantherY+291);
  vertex(pantherX+407, pantherY+307);
  vertex(pantherX+404, pantherY+315);
  vertex(pantherX+394, pantherY+347);
  vertex(pantherX+382, pantherY+370);
  vertex(pantherX+356, pantherY+407);
  vertex(pantherX+357, pantherY+415);
  vertex(pantherX+378, pantherY+443);
  vertex(pantherX+390, pantherY+441);
  vertex(pantherX+400, pantherY+441);
  vertex(pantherX+409, pantherY+446);
  vertex(pantherX+414, pantherY+453);
  vertex(pantherX+412, pantherY+459);
  vertex(pantherX+404, pantherY+467);
  vertex(pantherX+364, pantherY+462);
  vertex(pantherX+356, pantherY+456);
  vertex(pantherX+319, pantherY+404);
  vertex(pantherX+318, pantherY+392);
  vertex(pantherX+331, pantherY+361);
  vertex(pantherX+332, pantherY+330);
  vertex(pantherX+321, pantherY+311);
  vertex(pantherX+312, pantherY+343);
  vertex(pantherX+308, pantherY+352);
  vertex(pantherX+302, pantherY+360);
  vertex(pantherX+292, pantherY+364);
  vertex(pantherX+277, pantherY+373);
  vertex(pantherX+181, pantherY+445);
  vertex(pantherX+198, pantherY+472);
  vertex(pantherX+182, pantherY+475);
  vertex(pantherX+176, pantherY+473);
  vertex(pantherX+153, pantherY+459);
  vertex(pantherX+153, pantherY+452);
  vertex(pantherX+163, pantherY+429);
  vertex(pantherX+183, pantherY+371);
  vertex(pantherX+200, pantherY+366);
  vertex(pantherX+212, pantherY+354);
  vertex(pantherX+261, pantherY+231);
  vertex(pantherX+251, pantherY+228);
  vertex(pantherX+226, pantherY+227);
  vertex(pantherX+175, pantherY+228);
  vertex(pantherX+158, pantherY+225);
  vertex(pantherX+142, pantherY+220);
  vertex(pantherX+131, pantherY+220);
  vertex(pantherX+120, pantherY+215);
  vertex(pantherX+110, pantherY+209);
  vertex(pantherX+99, pantherY+206);
  vertex(pantherX+74, pantherY+191);
  vertex(pantherX+68, pantherY+186);
  vertex(pantherX+60, pantherY+180);
  vertex(pantherX+53, pantherY+174);
  vertex(pantherX+47, pantherY+169);
  vertex(pantherX+42, pantherY+164);
  vertex(pantherX+36, pantherY+154);
  vertex(pantherX+33, pantherY+150);
  vertex(pantherX+29, pantherY+143);
  vertex(pantherX+25, pantherY+134);
  vertex(pantherX+20, pantherY+128);
  vertex(pantherX+16, pantherY+108);
  vertex(pantherX+16, pantherY+82);
  vertex(pantherX+23, pantherY+62);
  vertex(pantherX+32, pantherY+55);
  vertex(pantherX+45, pantherY+53);
  vertex(pantherX+51, pantherY+63);
  vertex(pantherX+48, pantherY+72);
  vertex(pantherX+39, pantherY+74);
  vertex(pantherX+35, pantherY+93);
  vertex(pantherX+34, pantherY+108);
  vertex(pantherX+38, pantherY+121);
  vertex(pantherX+43, pantherY+132);
  vertex(pantherX+52, pantherY+144);
  vertex(pantherX+60, pantherY+153);
  vertex(pantherX+68, pantherY+162);
  vertex(pantherX+79, pantherY+169);
  vertex(pantherX+90, pantherY+176);
  vertex(pantherX+100, pantherY+182);
  vertex(pantherX+111, pantherY+186);
  vertex(pantherX+121, pantherY+192);
  vertex(pantherX+133, pantherY+194);
  vertex(pantherX+151, pantherY+198);
  vertex(pantherX+169, pantherY+201);
  vertex(pantherX+214, pantherY+201);
  vertex(pantherX+250, pantherY+195);
  vertex(pantherX+333, pantherY+170);
  vertex(pantherX+455, pantherY+164);
  vertex(pantherX+481, pantherY+169);
  vertex(pantherX+524, pantherY+179);
  vertex(pantherX+569, pantherY+179);
  vertex(pantherX+604, pantherY+168);
  vertex(pantherX+660, pantherY+158);
  vertex(pantherX+660, pantherY+148);
  endShape();
  //eyes
  fill(209, 206, 119);
  ellipse(pantherX+730, pantherY+195, 13, 9);
  ellipse(pantherX+695, pantherY+195, 15, 10);
  popMatrix();
}
void snake() {
  pushMatrix();
  scale(0.15);
  //snake outline
  fill(163, 142, 83);
  beginShape();
  vertex(snakeX+782, snakeY+47);
  vertex(snakeX+790, snakeY+58);
  vertex(snakeX+793, snakeY+66);
  vertex(snakeX+786, snakeY+78);
  vertex(snakeX+770, snakeY+94);
  vertex(snakeX+754, snakeY+100);
  vertex(snakeX+686, snakeY+111);
  vertex(snakeX+642, snakeY+114);
  vertex(snakeX+632, snakeY+119);
  vertex(snakeX+617, snakeY+149);
  vertex(snakeX+616, snakeY+159);
  vertex(snakeX+610, snakeY+198);
  vertex(snakeX+600, snakeY+255);
  vertex(snakeX+589, snakeY+317);
  vertex(snakeX+577, snakeY+341);
  vertex(snakeX+553, snakeY+379);
  vertex(snakeX+511, snakeY+420);
  vertex(snakeX+463, snakeY+439);
  vertex(snakeX+355, snakeY+446);
  vertex(snakeX+298, snakeY+430);
  vertex(snakeX+255, snakeY+398);
  vertex(snakeX+242, snakeY+337);
  vertex(snakeX+250, snakeY+308);
  vertex(snakeX+288, snakeY+253);
  vertex(snakeX+354, snakeY+214);
  vertex(snakeX+404, snakeY+201);
  vertex(snakeX+463, snakeY+193);
  vertex(snakeX+511, snakeY+192);
  vertex(snakeX+533, snakeY+192);
  vertex(snakeX+611, snakeY+198);
  vertex(snakeX+648, snakeY+206);
  vertex(snakeX+683, snakeY+219);
  vertex(snakeX+746, snakeY+258);
  vertex(snakeX+762, snakeY+275);
  vertex(snakeX+799, snakeY+364);
  vertex(snakeX+792, snakeY+409);
  vertex(snakeX+781, snakeY+437);
  vertex(snakeX+760, snakeY+467);
  vertex(snakeX+735, snakeY+490);
  vertex(snakeX+707, snakeY+509);
  vertex(snakeX+668, snakeY+528);
  vertex(snakeX+635, snakeY+544);
  vertex(snakeX+594, snakeY+553);
  vertex(snakeX+552, snakeY+562);
  vertex(snakeX+511, snakeY+567);
  vertex(snakeX+451, snakeY+575);
  vertex(snakeX+398, snakeY+573);
  vertex(snakeX+338, snakeY+572);
  vertex(snakeX+304, snakeY+570);
  vertex(snakeX+258, snakeY+564);
  vertex(snakeX+201, snakeY+553);
  vertex(snakeX+154, snakeY+540);
  vertex(snakeX+122, snakeY+528);
  vertex(snakeX+65, snakeY+493);
  vertex(snakeX+27, snakeY+452);
  vertex(snakeX+1, snakeY+368);
  vertex(snakeX+6, snakeY+329);
  vertex(snakeX+21, snakeY+297);
  vertex(snakeX+42, snakeY+273);
  vertex(snakeX+98, snakeY+233);
  vertex(snakeX+120, snakeY+223);
  vertex(snakeX+180, snakeY+205);
  vertex(snakeX+256, snakeY+184);
  vertex(snakeX+298, snakeY+145);
  vertex(snakeX+296, snakeY+132);
  vertex(snakeX+285, snakeY+120);
  vertex(snakeX+263, snakeY+110);
  vertex(snakeX+180, snakeY+98);
  vertex(snakeX+151, snakeY+95);
  vertex(snakeX+116, snakeY+86);
  vertex(snakeX+95, snakeY+77);
  vertex(snakeX+84, snakeY+65);
  vertex(snakeX+82, snakeY+56);
  vertex(snakeX+89, snakeY+55);
  vertex(snakeX+182, snakeY+74);
  vertex(snakeX+230, snakeY+74);
  vertex(snakeX+250, snakeY+75);
  vertex(snakeX+279, snakeY+78);
  vertex(snakeX+294, snakeY+82);
  vertex(snakeX+322, snakeY+95);
  vertex(snakeX+347, snakeY+155);
  vertex(snakeX+322, snakeY+201);
  vertex(snakeX+302, snakeY+221);
  vertex(snakeX+257, snakeY+239);
  vertex(snakeX+189, snakeY+267);
  vertex(snakeX+144, snakeY+286);
  vertex(snakeX+130, snakeY+294);
  vertex(snakeX+99, snakeY+341);
  vertex(snakeX+98, snakeY+359);
  vertex(snakeX+109, snakeY+385);
  vertex(snakeX+143, snakeY+411);
  vertex(snakeX+174, snakeY+426);
  vertex(snakeX+211, snakeY+436);
  vertex(snakeX+259, snakeY+445);
  vertex(snakeX+312, snakeY+452);
  vertex(snakeX+413, snakeY+455);
  vertex(snakeX+485, snakeY+447);
  vertex(snakeX+590, snakeY+426);
  vertex(snakeX+621, snakeY+413);
  vertex(snakeX+655, snakeY+377);
  vertex(snakeX+648, snakeY+350);
  vertex(snakeX+596, snakeY+315);
  vertex(snakeX+588, snakeY+315);
  vertex(snakeX+485, snakeY+305);
  vertex(snakeX+453, snakeY+307);
  vertex(snakeX+411, snakeY+316);
  vertex(snakeX+376, snakeY+329);
  vertex(snakeX+361, snakeY+341);
  vertex(snakeX+381, snakeY+342);
  vertex(snakeX+412, snakeY+342);
  vertex(snakeX+439, snakeY+335);
  vertex(snakeX+484, snakeY+305);
  vertex(snakeX+503, snakeY+280);
  vertex(snakeX+513, snakeY+251);
  vertex(snakeX+526, snakeY+220);
  vertex(snakeX+532, snakeY+193);
  vertex(snakeX+539, snakeY+160);
  vertex(snakeX+546, snakeY+129);
  vertex(snakeX+556, snakeY+107);
  vertex(snakeX+568, snakeY+79);
  vertex(snakeX+581, snakeY+64);
  vertex(snakeX+595, snakeY+50);
  vertex(snakeX+606, snakeY+38);
  vertex(snakeX+623, snakeY+27);
  vertex(snakeX+627, snakeY+17);
  vertex(snakeX+650, snakeY+1);
  vertex(snakeX+688, snakeY+1);
  vertex(snakeX+752, snakeY+25);
  vertex(snakeX+765, snakeY+39);
  endShape();
  popMatrix();
  //tongue
  stroke(184, 35, 35);
  strokeWeight(1);
  line(130, 370, 138, 370);
  line(138, 370, 140, 369);
  line(138, 370, 140, 371);
  noStroke();
  //eye
  fill(217, 200, 115);
  ellipse(120, 367, 3, 3);
}

void hummingbird() {
  hummingY+=hummingYC;
  hummingX+=4;
  if (hummingY==300 || hummingY==100) {//keeps changing the up-down direction of the bird
    hummingYC*=-1;
  }
  if (hummingX>=900) {//once bird reaches far enough, 
    hummingX=-800;
  }
  //tail
  fill(245, 5, 105);
  ellipse(hummingX+7, hummingY+30, 20, 20);

  //body
  noStroke();
  fill(217, 235, 160);
  arc(hummingX, hummingY, 40, 70, PI+HALF_PI, PI+PI+HALF_PI);
  fill(245, 5, 105);
  ellipse(hummingX+7, hummingY-10, 20, 20);
  fill(29, 184, 32);
  ellipse(hummingX, hummingY, 10, 70);

  //head
  fill(135, 219, 24);
  ellipse(hummingX+10, hummingY-25, 30, 30);
  stroke(102, 75, 5);
  strokeWeight(5);
  line(hummingX+25, hummingY-30, hummingX+40, hummingY-33);
  stroke(0);
  point(hummingX+15, hummingY-32);

  //wing
  noStroke();
  fill(12, 107, 24);
  ellipse(hummingX-20, hummingY-10, 40, 10);
  ellipse(hummingX-28, hummingY-5, 10, 20);
  ellipse(hummingX-19, hummingY+2, 10, 30);
  ellipse(hummingX-10, hummingY+5, 10, 40);
}

void tropForest() {
  noStroke();
  tropBackground();
  snake();
  hummingbird();
  if (close) {//chooses which direction the panther faces based on the boolean value
    panther2();
  } else {
    panther();
  }
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=450 && mouseY<=500) {//if click right arrow, move to the right
    delay(200);
    isInside1=false;
    isInside2=true;
    info=false;
  }
}
