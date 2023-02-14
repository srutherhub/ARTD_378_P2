Specs[] arrSpecs = new Specs[100];
newCircle test;

void bgSpecs() {
  push();
  noStroke();
  if (mySong.position() < 77712) {
    fill(3, 127, 140);
  } else {
    fill(242, 5, 5);
  }

  //println(int(mySong.mix.level()*10));
  for (int i=0; i<arrSpecs.length; i++) {
    arrSpecs[i].update();
    if (arrSpecs[i].ypos > height*1.8) {
      arrSpecs[i].zpos = random(0, 200);
      arrSpecs[i].xpos = random(-150, width+150);
      arrSpecs[i].ypos = random(-100, 0);
    }
  }
  pop();
}

class Specs {
  float xpos, ypos, zpos;

  Specs(float x, float y, float z) {
    xpos = x;
    ypos = y;
    zpos = z;
  }

  void update() {
    ypos+=0.5;
    push();
    noStroke();
    translate(xpos, ypos, zpos);
    circle(0, 0, 5);
    pop();
    if (ypos>height) {
      test = new newCircle(xpos, height, zpos);
    }
  }
}

class newCircle {
  float xpos, ypos, zpos;
  newCircle(float x, float y, float z) {
    xpos = x;
    ypos = y;
    zpos = z;
    push();
    stroke(242, 217, 141, 75);
    translate(xpos, height, zpos);
    circle(0, 0, 5+int(mySong.left.level()*15));
    pop();
  }
}
