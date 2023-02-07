float height3;
float height23;
float spectrumScale = 10.0;

void spectrum(){
  push();
  color color2 = color(242-int(colorNoise),160+int(colorNoise),255);
  rectMode(CORNERS);
  
  // perform a forward FFT on the samples in jingle's mix buffer
  // note that if jingle were a MONO file, this would be the same as using jingle.left or jingle.right
  fftLin.forward( mySong.mix );
   noStroke(); 
   if(mySong.position() > 77712){
    color2 = color(143+int(colorNoise),255,134+int(colorNoise));
  }
   fill(color2);

  {
    int w = int( width/fftLin.avgSize()/2 );
    for(int i = 0; i < fftLin.avgSize(); i++)
    {
      //rect(i*w, height23, i*w + w, height23 - fftLin.getAvg(i)*spectrumScale);
      push();
      rotateY(radians(90));
      rect(i*w, height23, i*w + w, height23 - fftLin.getAvg(i)*spectrumScale);
      pop();
      push();
      translate(width,0,0);
      rotateY(radians(90));
      rect(i*w, height23, i*w + w, height23 - fftLin.getAvg(i)*spectrumScale);
      pop();
    }
  }
  pop();

}
