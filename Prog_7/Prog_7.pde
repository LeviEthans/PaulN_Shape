float z = 1;
PVector loc;
PVector Locky;
int r, g, b;
int r2, g2, b2;
int r3, g3, b3;
int r4, g4, b4;
void setup() {
  size(800, 600);
  loc = new PVector(width/4, height/2);
  Locky = new PVector(width * 3/4, height/2);
  r = 255;
  r2 = 241;
  r3 = 236;
  r4 = 35;
  g = 0;
  g2 = 179;
  g3 = 128;
  g4 = 66;
  b = 200;
  b2 = 225;
  b3 = 208;
  b4 = 19;
}
void draw() {
  if (loc.x == Locky.x) {
    r = 0;
    r2 = 14;
    r3 = 19;
    r4 = 215;
  } else {
    r = 255;
    r2 = 241;
    r3 = 236;
    r4 = 35;
  }

  if (loc.y == Locky.y) {
    b = 55;
    b2 = 30;
    b3 = 47;
    b4 = 236;
  } else {
    b = 200;
    b2 = 225;
    b3 = 208;
    b4 = 19;
  }
  if(loc.x >= width -100){
    loc.x = width - 100;
  }
  if(loc.x <= 100){
    loc.x = 100;
  }
 if(loc.y >= height - 100){
   loc.y = height - 100;
 }
 if(loc.y <= 100){
   loc.y = 100;
 }
  ellipseMode(RADIUS);
  background(0);
  ellipse(loc.x, loc.y, 100, 100);
  fill(r, g, b);
  ellipse(loc.x, loc.y, 50, 50);
  fill(r2, g2, b2);
  ellipse(Locky.x, Locky.y, 90, 90);
  fill(r3, g3, b3);
  strokeWeight(8);
  stroke(r4, g4, b4);
  line(Locky.x-40, Locky.y-20, Locky.x + 40, Locky.y + 20);
}

void keyPressed() {
  if (key == 'a') {
    loc.sub(5, 0);
  }
  if (key == 's') {
    loc.add(0, 5);
  }
  if (key == 'd') {
    loc.add(5, 0);
  }
  if (key == 'w') {
    loc.sub(0, 5);
  }
  if (key == ' ') {
    loc.sub(0, 20);
  }
  if (key == CODED) {
    if (keyCode == UP) {
      Locky.sub(0, 5);
    }
    if (keyCode == LEFT) {
      Locky.sub(5, 0);
    }
    if (keyCode == RIGHT) {
      Locky.add(5, 0);
    }
    if (keyCode == DOWN) {
      Locky.add(0, 5);
    }
    if (keyCode == SHIFT) {
      Locky.sub(0, 20);
    }
  }
}
