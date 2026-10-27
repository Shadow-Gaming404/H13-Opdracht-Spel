float PlayerX, PlayerY;
boolean PlayerMoved;


class Player {
  float X, Y, Width, Height;

  Player() {
    X = width/2-25;
    Y = height - 75;
    Width = 50;
    Height = 50;
  }
  void update() {

    if (Restart) {
      X = width/2-25;
      Y = height - 75;
    }

    //key presses
    //Restarting

    if (R) {
      X = width/2-25;
      Y = height - 75;
    }

    //Left & Right
    if (A && D) {
      X += 0;
      PlayerMoved = true;
      Respawn = false;
    } else if (A && !W && !S) {
      X += -3;
      PlayerMoved = true;
      Respawn = false;
    } else if (D && !W && !S) {
      X += 3;
      PlayerMoved = true;
      Respawn = false;
    } else if (!A && !D) {
      X += 0;
      PlayerMoved = true;
      Respawn = false;
    }

    //Left & Right
    if (W && S) {
      Y += 0;
      PlayerMoved = true;
      Respawn = false;
    } else if (W && !A && !D) {
      Y += -3;
      PlayerMoved = true;
      Respawn = false;
    } else if (S && !A && !D) {
      Y += 3;
      PlayerMoved = true;
      Respawn = false;
    } else if (!W && !S && !A && !D) {
      Y += 0;
      PlayerMoved = true;
      Respawn = false;
    }
    //Diagonals
    if (W && D && !A && !S) {
      X += 1.75;
      Y -= 1.75;
      PlayerMoved = true;
      Respawn = false;
    } else if (W && A && !D && !S) {
      X -= 1.75;
      Y -= 1.75;
      PlayerMoved = true;
      Respawn = false;
    } else if (S && D && !A && !W) {
      X += 1.75;
      Y += 1.75;
      PlayerMoved = true;
      Respawn = false;
    } else if (S && A && !W && !D) {
      X -= 1.75;
      Y += 1.75;
      PlayerMoved = true;
      Respawn = false;
    }

    //-----------------------------
    //Position updates
    PlayerX = X;
    PlayerY = Y;
    //-----------------------------
    //horizontal wrap-around
    if (X < 0-Width) {
      X = width;
    } else if (X > width) {
      X = 0-Width;
    }
    //vertical wrap-around (+ bottom wrap-around block)
    if (Y <= 0-Height) {
      Y = height;
      RoadsCrossed += 1;
      println(RoadsCrossed);
    } else if (Y > height - Height) {
      Y = height - Height;
    }
  }
  void display() {
    fill(0, 122, 0); //(R,G,B,Opacity (0 inv - 255 vis))
    rect(X, Y, Width, Height);
  }
}
