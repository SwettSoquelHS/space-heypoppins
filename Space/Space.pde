//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] balls;

void setup() {
  frameRate(30);
  background(0);
  size(900, 600);
  balls = new Normal[2000];
  for (int i = 0; i < balls.length; i++) {
    double speed = (double)(3*Math.random()) + 2;
    double x = (double)(width*Math.random());
    double y = (double)(height*Math.random());
    int r;
    int g;
    int b;
    if (x >= 0 && x <= 300) {
      r = 255;
      g = 0;
      b = 0;
    } else if (x >= 300 && x <= 600) {
      r = 0;
      g = 255;
      b = 0;
    } else {
      r = 0;
      g = 0;
      b = 255;
    }
    balls[i] = new Normal(x, y, speed, 2, r, g, b);
  }
} 


void draw() {
  drawBackground();
  for (int i = 0; i < balls.length; i++) {
    balls[i].show();
  }
  for (int i = 0; i < balls.length; i++) {
    balls[i].move();
  }
}

void drawBackground() {
  fill(255, 0, 0);
  rect(0, 0, 300, 600); 
  fill(0, 255, 0);
  rect(300, 0, 300, 600);
  fill(0, 0, 255);
  rect(600, 0, 300, 600);
}  
