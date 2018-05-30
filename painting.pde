int screenWidth = 1000;
int screenHeight = 1000;
int dotCount = 60;
int[] hues = {2, 10, 17, 37, 40, 63, 67, 72, 74, 148,194, 260, 270, 320, 330, 340, 350};
Dot[] dots = new Dot[dotCount];

void settings() {
  size(screenWidth, screenHeight);
}

void setup() {
  background(0);
  noStroke();
  colorMode(HSB, 100, random(120), 90, 1);

  for (int i = 0; i < dots.length; i ++ ) {
    // initialise each dot with a random [x,y] position
    dots[i] = new Dot(int(random(screenWidth)), int(random(screenHeight)));
  }
}

void draw() {
  for (int i = 0; i < dots.length; i ++ ) {
    dots[i].draw();
  }
}

void mousePressed() {
  save("painting.png");
}