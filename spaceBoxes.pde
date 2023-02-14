spaceBox[] arrBox = new spaceBox[50];
color[] colorArr = {#04B2D9, #F29F05, #F28705, #D9BBB0, #A61103};
int colorCounter = 0;
int colorCount = 0;
color boxColor = colorArr[colorCount];

void displayBox() {
  //println(mySong.position());
  println(colorCount);
  colorCounter += 1;
  for (int i=0; i<arrBox.length; i++) {
    push();
    noStroke();
    if (mySong.position()>58525) {
      colorCounter += 1;
      fill(boxColor);
      if (colorCounter > 3300) {
        //println(colorCounter);
        boxColor = colorArr[colorCount];
        colorCount+=1;
        colorCounter = 0;
      }

    } else {
      fill(colorArr[1]);
    }
    arrBox[i].update();
    if(colorCount > 4){
      colorCount = 0;
    }
    pop();
  }
}


class spaceBox {
  float xpos, ypos, zpos;
  spaceBox(float x, float y, float z) {
    ypos = y;
    xpos = x;
    zpos = z;
  }
  void update() {
    push();
    translate(xpos, ypos, zpos);
    rotateX(radians(millis()/200.0));
    rotateY(-radians(millis()/200.0));
    rotateZ(radians(millis()/200.0));
    box(50);
    pop();
  }
}
