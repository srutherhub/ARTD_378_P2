float color_count = 0.0;
float colorNoise = noise(color_count)*25;


void bgGradients() {
  color_count+=0.005;
  color color1 = color(255-int(colorNoise),218+int(colorNoise),144);
  color color2 = color(242-int(colorNoise),160+int(colorNoise),255);
  if(mySong.position() > 77712){
    color1 = color(185+int(colorNoise),253-int(colorNoise),255);
    color2 = color(143+int(colorNoise),255,134+int(colorNoise));
  }
  
  colorNoise = noise(color_count)*50;

 push();
 noStroke();
    for (int i = 0; i<26; i++){
      fill(lerpColor(color1,color2,i/26.0));
      rect(i*26,0,26,height);
  } 
 pop();
  push();
  noStroke();
    for (int i = 0; i<26; i++){
      fill(lerpColor(color2,color1,i/26.0));
      rect(i*26+650,0,26,height);
  } 
 pop();
 //println(int(colorNoise));
}
