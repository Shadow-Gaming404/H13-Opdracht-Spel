class Player{
float X,Y,Width,Height;

  Player(){
  X = width/2;
  Y = height/2;
  Width = 50;
  Height = 50;
  
  }
  void update(){
  //key presses
    //Left & Right
   if (A){
     X += -5;
   } else if (D){
     X += 5;
     } else if (!A && !D){
      X += 0;
       }
       
           //Left & Right
   if (W){
     Y += -5;
   } else if (S){
     Y += 5;
     } else if (!W && !S){
      Y += 0;
       }

//-----------------------------
//Position updates
    X = X;
    Y = Y;
//-----------------------------  
  //horizontal wrap-around
    if(X < 0-Width){
     X = 500;
    } else if (X > width){
       X = 0;
      }
  //vertical wrap-around
    if(Y <= 0-Height){
     Y = height;
    } else if (Y > height){
       Y = 0;
      }
  }
  void display(){
    fill(0,122,0); //(R,G,B,Opacity (0 inv - 255 vis))
    rect(X,Y,Width,Height);
  }

}
