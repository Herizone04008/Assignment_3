PFont bubblyFont;
char randomLetter;
int difficulty = 0;
String message = "";

void setup() {
size(600, 400);
bubblyFont = createFont("Modak-Regular.ttf", 27);
textFont(bubblyFont);
}

void draw() {
background(30);

fill(255);
textAlign(CENTER, CENTER);
textSize(28);
text("Typing Test", 300, 80);

// Easy Button
fill(80, 180, 100);
rect(50, 150, 158, 90, 20);

fill(255);
textSize(28);
text("Easy", 129, 195);

// Medium Button
fill(70, 130, 220);
rect(214, 150, 158, 90, 20);

fill(255);
text("Medium", 293, 195);

// Hard Button
fill(220, 80, 80);
rect(380, 150, 158, 90, 20);

fill(255);
text("Hard", 459, 195);

// Display selected difficulty
if (difficulty == 1) {
textSize(20);
text("Easy selected!", 300, 265);
}
else if (difficulty == 2) {
textSize(20);
text("Medium selected!", 300, 265);
}
else if (difficulty == 3) {
textSize(20);
text("Hard selected!", 300, 265);
}

// Display the random letter
if (difficulty != 0) {
fill(255);
textSize(30);
text(randomLetter, 300, 310);
}

// Display the result message
fill(255);
textSize(16);
text(message, 300, 365);
}

void mousePressed() {
// Easy Button
if (mouseX >= 50 && mouseX <= 208 &&
mouseY >= 150 && mouseY <= 240) {
difficulty = 1;
randomLetter = "abcdefg".charAt(int(random(7)));
message = "";
}

// Medium Button
else if (mouseX >= 214 && mouseX <= 372 &&
mouseY >= 150 && mouseY <= 240) {
difficulty = 2;
randomLetter = "hijklmno".charAt(int(random(10)));
message = "";
}

// Hard Button
else if (mouseX >= 380 && mouseX <= 538 &&
mouseY >= 150 && mouseY <= 240) {
difficulty = 3;
randomLetter = "abcdEFGhiJkLMNopQ".charAt(int(random(18)));
message = "";
}
}

void keyPressed() {
if (difficulty != 0) {
if (key == randomLetter) {
message = "You are correct, Good Job >^_^<";
}
else {
message = "That was close, you are wrong!";
}
}
}
