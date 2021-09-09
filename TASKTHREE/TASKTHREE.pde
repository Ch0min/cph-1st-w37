// 3.a Draw a traffic light using colors stored in variables - one for each of the 4 colors (background is the 4th).
color red = color(255, 0, 0);
color green = color(0, 255, 0);
color yellow = color(255, 255, 0);
color grey = color (175);

int w = 200;
int y = 200;


void setup() {
  size(250, 700);
  background(255);
  stroke(0);
  strokeWeight(10);
  rectMode(CENTER);
  fill(0);
  rect(125, 350, 200, 600);

  // 3.b add a gray color for the turned off effect
  ellipseMode(CENTER);
  fill(175);
  ellipse(width/2, height/2, w, y);
  ellipse(width/2, height/2-y, w, y);
  ellipse(width/2, height/2+y, w, y);
}

// + 3.b
// 3.c have the light turn on/off (green or red) automatically.
int i = 1;
void draw() {
  frameRate(10);
  if (i > 25) {
    fill(red);
    ellipse(width/2, height/2-y, w, y);
    fill(grey);
    ellipse(width/2, height/2+y, w, y);
  } else {
    fill(green);
    ellipse(width/2, height/2+y, w, y);
    fill(grey);
    ellipse(width/2, height/2-y, w, y);
  }

  i++;
  if (i == 50) {
    i = 1;
  }
}
