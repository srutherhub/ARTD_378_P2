float color_count = 0.0;
float colorNoise = noise(color_count)*25;


void bgGradients() {
  color_count+=0.01;
  
  colorNoise = noise(color_count)*50;
  color color1 = color(255,218+int(colorNoise),144+int(colorNoise));
  color color2 = color(242,160,255);
  
  noStroke();
  
 push();
    for (int i = 0; i<24; i++){
      fill(lerpColor(color1,color2,i/100.0));
      rect(i*29,0,24,height);
  } 
 pop();

 

 //println(int(colorNoise));
}
