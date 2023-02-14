float color_count = 0.0;
float colorNoise = noise(color_count)*25;


void bgGradients() {
  color_count+=0.005;
  color color1 = color(3+int(colorNoise), 147+int(colorNoise), 140, 100);
  color color2 = color(242-int(colorNoise), 194+int(colorNoise), 153);
  if (mySong.position() > 77712) {
    color1 = color(242+int(colorNoise), 94-int(colorNoise), 94, 100);
    color2 = color(39+int(colorNoise), 44, 140+int(colorNoise));
  }

  colorNoise = noise(color_count)*50;

  push();
  //noStroke();

  for (int i = 0; i<26; i++) {
    stroke(232, 136, 75, i+1/26.0);
    fill(lerpColor(color1, color2, i/26.0));
    rect(i*26, 0, 26, height);
  }
  pop();
  push();
  for (int i = 0; i<26; i++) {
    stroke(232, 136, 75, 26.0-i+1/26.0);
    fill(lerpColor(color2, color1, i/26.0));
    rect(i*26+650, 0, 26, height);
  }
  pop();
  //println(int(colorNoise));
}
