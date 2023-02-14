float shape_count = 0.0;


void threeDShape(float size) {
  shape_count += 0.05;

  //
  push();
  //
  noStroke();

  color color1 = color(232, 136, 75);
  //
  //rotateY(radians(millis()/100.0));
  //push();
  //fill(color1);
  //box(size);
  //pop();
  ////

  //pop();
  if (mySong.position() > 77712) {
    color1 = color(255, 239, 57);
  }
  for (int i=0; i<100; i++) {
    fill(color1);
    push();
    rotate(radians(i*360/100.0));
    circle(25, 157, -28+(sin(shape_count+(i*6.6)))*20.0+size);
    pop();
  }
  pop();
}
