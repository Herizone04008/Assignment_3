PFont bubblyFont;
char randomLetter;
int difficulty = 0;
String message = "";
void setup() {
  size(600, 400);
  bubblyFont = createFont("Modak-Regular.ttf", 27);
  textFont(bubblyFont);
}

void draw () {
  background(30);
  
  fill(255);
  textAlign(CENTER);
  textSize(28);
  text("Typing Test ", 300, 80);
  // Easy Button
  fill(80, 18, 100);
  rect(50, 150, 158, 90, 20);
  
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(28);
  text("Easy", 129, 187);
  
   // Medium Button
  fill(70, 130, 220);
  rect(214, 150, 158, 90, 20);
  
  fill(255);
  text("Medium", 300, 187, 20);
  
  // Hard Buttom
  fill(220, 80, 80);
  rect(380, 150, 158, 90, 20);
  
  fill(255);
  text("Hard", 449, 187);
  if(difficulty != 0) {
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(30);
  text(randomLetter, 300, 340);
  }
  
  if(difficulty == 1) {
    text("Easy selected!", 300, 290);
  }
  else  if(difficulty == 2) {
    text("Medium  selected!", 300, 290);
  }
  else  if(difficulty == 3) {
    text("Hard selected!", 300, 290);
  }
}

void mousePressed() {
  // Easy Button
  if (mouseX >= 50 && mouseX <= 210 && mouseY >= 150 && mouseY <= 230) {
    difficulty = 1;
    randomLetter = "ABCDEFG".charAt(int(random(7)));
  }
  // Medium Buttom
   else if (mouseX >= 214 && mouseX <= 372 && mouseY >= 150 && mouseY <= 230) {
    difficulty = 2;
    randomLetter = "HIJKLMNOPQ".charAt(int(random(11)));
  }
  // Hard Buttom
   if (mouseX >= 380 && mouseX <= 534 && mouseY >= 150 && mouseY <= 230) {
    difficulty = 3;
    randomLetter = "ABCDFEGHIJKLMNOPQR".charAt(int(random(18)));
  }
}

void keyPressed() {
  if(difficulty != 0) {
    if(key == randomLetter) {
      message = " Good Jod" + '>^-^<';
}
