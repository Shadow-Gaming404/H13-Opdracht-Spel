//maak een functie voor tekenen van witte lijnen...waarom? leesbaarheid
boolean Playing = true;
boolean FrogHit = false;
boolean Restart = false;
boolean Respawn = false;

int RoadsNmr = 7;

int RoadsCrossed = 0;

boolean A, S, W, D, Right, Down, Up, Left, R;

Player Player;

Car[] Car;


void setup() {

  size(800, 700);

  A = false;
  S = false;
  W = false;
  D = false;
  Right = A;
  Down = S;
  Up = W;
  Left = D;

  R = false;

  Player = new Player();

  Car = new Car[RoadsNmr-1];
  for (int i = 0; i < Car.length; i++) {
    Car[i] = new Car(i);
  }
}



void draw() {
  println(keyCode);
  if (Restart) {
    RoadsCrossed = 0;
    FrogHit = false;
    Restart = false;
  } else if (FrogHit) {
    background(122, 0, 0);
    textSize(50);
    fill(0);
    text("You lose", width/2-75, height/2);
    textSize(20);
    fill(0);
    text("Press R to restart", width/2-55, height/2+30);
  } else {
    background(70);
    for (int i = 1; i < RoadsNmr; i++) {
      strokeWeight(1);
      line(0, 100 * i, width, 100 * i);
    }

    tekenWitteLijnen();

    for (int i = 0; i < Car.length; i++) {
      Car[i].display();
      Car[i].update();
    }

    Player.update();
    Player.display();

    textSize(30);
    text(RoadsCrossed + " Highways crossed", width-275, height-10);
  }
}

void tekenWitteLijnen() {
  int WhiteLines = 0;
  for (int i = 0; i < RoadsNmr; i++) {
    WhiteLines += 1;
    for (int j = 0; j < 15; j++) {

      strokeWeight(0);
      fill(255);
      rect(20 + 60*j, 45 + 100*i, 20, 10);
    }
  }
}


void keyPressed() {

  if (keyCode == 65 || keyCode == 37) {
    A = true;
  }
  if (keyCode == 83 || keyCode == 40) {
    S = true;
  }
  if (keyCode == 87 || keyCode == 38) {
    W = true;
  }
  if (keyCode == 68 || keyCode == 39) {
    D = true;
  }
  if (keyCode == 82) {
    Restart = true;
    Respawn = true;
    R = true;
  }
}

void keyReleased() {

  if (keyCode == 65 || keyCode == 37) {
    A = false;
  }
  if (keyCode == 83 || keyCode == 40) {
    S = false;
  }
  if (keyCode == 87 || keyCode == 38) {
    W = false;
  }
  if (keyCode == 68 || keyCode == 39) {
    D = false;
  }
  if (keyCode == 82) {
    Restart = true;
    Respawn = true;
    R = false;
  }
}
