class Car{
int CarAmount;
  
float X, Y,Width,Height;

int R,G,B;

float Speed;

boolean Switch;

int RightOrLeft;

  Car(int LaneNmr){
CarAmount = LaneNmr;

R = int(random(50,256));
G = int(random(50,256));
B = int(random(50,256));


Y = int(random(2,18+1)) + LaneNmr * 100;
Width = int(random(80, 151));
Height = int(random(65, 80));

Speed = int(random(2,10));

RightOrLeft  = int(random(1,2+1));

if (RightOrLeft == 1){
  X = width-1;
}
else X = 0-Width-1;

}

  void update(){
    
if (RightOrLeft == 1){
  X -= Speed;
}
else X += Speed;


    

//-----------------------------  
  //horizontal wrap-around
    if(X < 0-Width && RightOrLeft == 1){
     for(int i = 1; i <= 1; i++){Switch = true;}
    }   else if (X > width && RightOrLeft == 2){
         for(int i = 1; i <= 1; i++){Switch = true;}
        }
        
if (Switch){

R = int(random(50,256));
G = int(random(50,256));
B = int(random(50,256));


Y = int(random(2,18+1)) + CarAmount * 100;
Width = int(random(80, 151));
Height = int(random(65, 80));

Speed = int(random(2,10));

RightOrLeft  = int(random(1,2+1));

if (RightOrLeft == 1){
  X = width-1;
}
else X = 0-Width-1;

}
        
}

  void display(){
    
    fill(R,G,B);
    rect(X,Y,Width,Height);
    
  }

}
