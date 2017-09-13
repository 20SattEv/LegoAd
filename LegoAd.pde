//South Park Lego Ad
//Evan Satterfield

player cartman;

int kyleX=0;
int kyleY=600;

int stanX=600;
int stanY=600;

int kennyX=600;
int kennyY=100;

void setup() {
  background(249, 242, 223);
  size(700, 700);
  noStroke();
  cartman = new player();
}


void draw() {
  background(249, 242, 223);

  //Kyle
  fill(176, 190, 74); //lime green
  rect(kyleX, kyleY-20, 50, 10);
  fill(55, 118, 69); //green
  rect(kyleX, kyleY-10, 50, 10);
  fill(247, 188, 151); //skin
  rect(kyleX, kyleY, 50, 50);
  fill(202, 92, 39); //orange
  rect(kyleX, kyleY+50, 50, 40);
  fill(44, 51, 67); //navy blue
  rect(kyleX, kyleY+90, 50, 10);

  //Stan
  fill(81, 86, 124); //blue
  rect(stanX, stanY-20, 50, 10);
  rect(stanX, stanY+90, 50, 10);
  fill(195, 55, 41); //red
  rect(stanX, stanY-10, 50, 10);
  fill(247, 188, 151); //skin
  rect(stanX, stanY, 50, 50);
  fill(107, 59, 45); //brown
  rect(stanX, stanY+50, 50, 40);

  //Kenny
  fill(202, 92, 39); //orange
  rect(kennyX, kennyY-20, 50, 120);
  fill(107, 59, 45); //brown
  rect(kennyX, kennyY, 50, 30);
  fill(247, 188, 151); //skin
  rect(kennyX, kennyY+10, 50, 10);

  //Cartman
  cartman.show();

  if (kyleX<325) {
    kyleX++;
  }
  if (kyleY>300) {
    kyleY--;
  }
  if (stanX>425) {
    stanX--;
  }
  if (stanY>300) {
    stanY--;
  }
  if (kennyX>525) {
    kennyX--;
  }
  if (kennyY<300) {
    kennyY++;
  }
}

//More Cartman
class player {  
  int cartmanX = 25;
  int wd=50;
  int cartmanY = 50;
  void show() {
    fill(247, 188, 151); //skin
    rect(cartmanX, cartmanY, 100, 50);
    fill(195, 55, 41); //red
    rect(cartmanX, cartmanY+50, 2*wd, 40);
    fill(107, 59, 45); //brown
    rect(cartmanX, cartmanY+90, 2*wd, 10);
    fill(148, 187, 181); //light blue
    rect(cartmanX, cartmanY-10, 2*wd, 10);
    fill(250, 205, 54); //yellow
    rect(cartmanX+25, cartmanY-20, wd, 10);
  }

  //Motion
  void moveUp() {
    cartmanY=cartmanY-=2;
  }
  void moveRight() {
    cartmanX=cartmanX-=2;
  }
  void moveDown() {
    cartmanY=cartmanY+=2;
  }
  void moveLeft() {
    cartmanX=cartmanX+=2;
  }
}

//More Motion
void keyPressed() {
  if (key == 'w') {
    cartman.moveUp();
  }
  if (key == 'a') {
    cartman.moveRight();
  }
  if (key == 's') {
    cartman.moveDown();
  }
  if (key == 'd') {
    cartman.moveLeft();
  }
}
