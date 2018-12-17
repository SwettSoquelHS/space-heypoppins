class Normal {
  double speed;
  double angle;
  int r_color;
  int g_color;
  int b_color;

  double x_pos;
  double y_pos;

  Normal(double x, double y, double spd, double ang, int r, int g, int b) {
    x_pos = x;
    y_pos = y;
    speed = spd;
    angle = ang;
    r_color = r;
    g_color = g;
    b_color = b;
  }

  void move() {
    x_pos = x_pos + speed * (double)Math.cos(radians((float)angle));
    y_pos = y_pos + speed * (double)Math.sin(radians((float)angle));
    if (x_pos > 900) {
      x_pos = 0;
    }
    if (y_pos > height) {
      y_pos = 0;
    }
  }

  void show() {
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    fill(r_color, g_color, b_color);
    ellipse((float)x_pos, (float)y_pos, 10, 10);
    popMatrix();
  }
}
