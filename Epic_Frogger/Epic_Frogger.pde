int RoadsNmr = 6;

boolean A,S,W,D,Right,Down,Up,Left;

Player Player;
  
Car[] Car;
  

void setup(){

size(700, 700);

A = false;
S = false;
W = false;
D = false;
Right = A;
Down = S;
Up = W;
Left = D;

Player = new Player();

Car = new Car[RoadsNmr-1];
for(int i = 0; i < Car.length; i++){
      Car[i] = new Car(i);
}

}



void draw(){
  
  background(70);
  
  for(int i = 0; i < Car.length; i++){
      Car[i].display();
}
  for(int i = 0; i < Car.length; i++){
      Car[i].update();
}

  Player.update();
  Player.display();

   
}

void keyPressed(){

  if (keyCode == 65 || keyCode == 37){
    A = true;
   }
  if (keyCode == 83 || keyCode == 40){
    S = true;
   }
  if (keyCode == 87 || keyCode == 38){
    W = true;
   }
  if (keyCode == 68 || keyCode == 39){
    D = true;
   }
}

void keyReleased(){

  if (keyCode == 65 || keyCode == 37){
    A = false;
   }
  if (keyCode == 83 || keyCode == 40){
    S = false;
   }
  if (keyCode == 87 || keyCode == 38){
    W = false;
   }
  if (keyCode == 68 || keyCode == 39){
    D = false;
   }
}
