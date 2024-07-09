Player p1;
boolean gameOver = false;

//maak array van getallen
int[] getallen = {5, 10, 15, 20, 25};
Stone[] stones = {new Stone(), new Stone(), new Stone(), new Stone()};
//loop door array en print getallen 1 voor 1 (in setup())

//array van stenen

void setup() {
  size(1200, 900);

  p1 = new Player(width/3, height/3, 100, 100);
}



void draw() {
  background(0, 255, 255);

if (!gameOver){
  p1.render();
  p1.move();


  //per steen:

  for (int i = 0; i < stones.length; i++) {
    Stone stone = stones[i];


    stone.render();
    stone.move();

    if (stone.y >= height) {
      stone.reset();
    }
  

    if (circlesCollide(p1, stone)) {
      print("Game Over");
      gameOver = true;
      break;
    }
  }
} else {

  textAlign(CENTER, CENTER);
  textSize(64);
  fill(0,0,0);
  text("Game Over", width / 2, height / 2);
  noLoop();
  }
}
void keyPressed() {
  if (key == 'a') {
    p1.isMovingLeft = true;
  }


  if (key == 'd') {
    p1.isMovingRight = true;
  }
}

void keyReleased() {
  if (key == 'a') {
    p1.isMovingLeft = false;
  }

  if (key == 'd') {
    p1.isMovingRight = false;
  }
}

boolean circlesCollide(Player p, Stone steen) {
  float distance = dist(p.x, p.y, steen.x, steen.y);
  boolean hit = (distance <= steen.size);
  return hit;
}
