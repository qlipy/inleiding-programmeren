class Stone {

  float x;
  float y;
  float speed = 0;
  float size = 0;

  Stone() {
    reset();
  }

  void reset() {
    y = 0;
    x = random(0, 1200);
    speed = random(2, 6);
    size = random(50, 150);
  }

  void render() {
    ellipse(x, y,  size,  size);
  }

  void move() {
    y = y+speed;
  }
}
