float height3;
float height23;
float spectrumScale = 15.0;

void spectrum(){
  float wave = (sin(shape_count)*20.0);
  push();
  color color2 = color(242-int(colorNoise),160+int(colorNoise),255);
  fftLin.forward( mySong.mix );
   noStroke(); 
   if(mySong.position() > 77712){
       color2 = color(255+int(colorNoise),239,57+int(colorNoise));
  }
   fill(color2);

  {
    int w = int( width/fftLin.avgSize()/2 );
    for(int i = 0; i < fftLin.avgSize(); i++)
    {
      //rect(i*w, height23, i*w + w, height23 - fftLin.getAvg(i)*spectrumScale);
      push();
      rotateY(radians(90));
      //rect(i*w, height23, i*w + w, height23 - fftLin.getAvg(i)*spectrumScale);
      translate(i*w,height23+(wave));
      box(10 ,10 - fftLin.getAvg(i)*spectrumScale,10);
      pop();
      //
      push();
      translate(width,0,0);
      rotateY(radians(90));
      wave = (cos(shape_count/2.0)*5.0);
      //rect(i*w, height23, i*w + w, height23 - fftLin.getAvg(i)*spectrumScale);
      translate(i*w,height23+wave);
      box(10 ,10 - fftLin.getAvg(i)*spectrumScale,10);
      pop();
      //
    }
  }
  pop();

}
