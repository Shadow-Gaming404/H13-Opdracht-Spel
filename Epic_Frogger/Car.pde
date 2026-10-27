float CarX;
float CarY;

class Car {

  int CarAmount;

  float X, Y, Width, Height;

  int R, G, B;

  float Speed;

  boolean Switch;

  int RightOrLeft;

  Car(int LaneNmr) {
    CarAmount = LaneNmr;


    R = int(random(50, 256));
    G = int(random(50, 256));
    B = int(random(50, 256));


    Y = int(random(2, 18+1)) + LaneNmr * 100;
    Width = int(random(80, 151));
    Height = int(random(65, 80));

    Speed = int(random(2, 10));

    RightOrLeft  = int(random(1, 2+1));

    if (RightOrLeft == 1) {
      X = width-1;
    } else X = 0-Width-1;
  }

  void update() {

    if (Restart) {
      PlayerMoved = false;
    }

    if (RightOrLeft == 1) {
      X -= Speed;
    } else X += Speed;



    //-----------------------------
    //horizontal wrap-around
    if (X < 0-Width && RightOrLeft == 1) {
      R = int(random(50, 256));
      G = int(random(50, 256));
      B = int(random(50, 256));


      Y = int(random(2, 18+1)) + CarAmount * 100;
      Width = int(random(80, 151));
      Height = int(random(65, 80));

      Speed = int(random(2, 10));

      RightOrLeft  = int(random(1, 2+1));

      if (RightOrLeft == 1) {
        X = width-1;
      } else X = 0-Width-1;
    } else if (X > width && RightOrLeft == 2) {
      R = int(random(50, 256));
      G = int(random(50, 256));
      B = int(random(50, 256));


      Y = int(random(2, 18+1)) + CarAmount * 100;
      Width = int(random(80, 151));
      Height = int(random(65, 80));

      Speed = int(random(2, 7));

      RightOrLeft  = int(random(1, 2+1));

      if (RightOrLeft == 1) {
        X = width-1;
      } else X = 0-Width-1;
    }


    if (Switch) {

      R = int(random(50, 256));
      G = int(random(50, 256));
      B = int(random(50, 256));


      Y = int(random(2, 18+1)) + CarAmount * 100;
      Width = int(random(80, 151));
      Height = int(random(65, 80));

      Speed = int(random(2, 10));

      RightOrLeft  = int(random(1, 2+1));

      if (RightOrLeft == 1) {
        X = width-1;
      } else X = 0-Width-1;
    }


    CarX = X;
    CarY = Y;

    //All possible hits

    if (PlayerMoved) {
      if (CarX <= PlayerX && CarX >= PlayerX-Width && CarY <= PlayerY && CarY >= PlayerY-Height || CarX >= PlayerX && CarX <= PlayerX+50 && CarY <= PlayerY && CarY >= PlayerY-Height || CarY >= PlayerY && CarY <= PlayerY+50 && CarX <= PlayerX && CarX >= PlayerX-Width || CarY >= PlayerY && CarY <= PlayerY+50 && CarX >= PlayerX && CarX <= PlayerX+50  && PlayerY >= 100) {
        println("plug");
        FrogHit = true;
      }
    }
  }



  void display() {

    fill(R, G, B);
    rect(X, Y, Width, Height);
  }
}
