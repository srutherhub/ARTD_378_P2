float secondCount;

void secondCircle(){
secondCount+=0.05;
  //noStroke();
  for (int i=0; i<100; i++) {
    push();
    stroke(232, 136, 75,50);
    translate(width/2, height/2);
    rectMode(CENTER);
    rotate(radians(i*360.0/100.0));
    rect(i*0, -313, 264+sin(secondCount+(i*4.8))*(1+mySong.mix.level()*500.0),0);
    pop();
  }
}
