float shape_count = 0.0;


void threeDShape(float size){
  shape_count += 0.005;

  //
  push();
  //
  noStroke();
  //stroke(185,253,255);

  color color1 = color(255,218,144);
  //
  rotateY(radians(millis()/100.0));
  push();
  fill(color1);
  translate(noise(shape_count)*50,0,0);
  sphere(size);
  pop();
    push();
  fill(color1);
  translate(0,noise(shape_count)*50,0);
  sphere(size);
  pop();
    push();
  fill(color1);
  translate(noise(shape_count*50),0,0);
  sphere(size);
  pop();
    push();
  fill(color1);
  translate(0,noise(shape_count*50),0);
  sphere(size);
  pop();
  //
  pop();
}
