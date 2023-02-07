import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
BeatDetect beat;
AudioPlayer mySong; //Childish Gambino Summertime Magic
FFT fftLin;


void setup() {
  //
  size(1280, 720, P3D);
  minim = new Minim(this);
  beat = new BeatDetect();
  //
  //
  mySong = minim.loadFile("summertime.mp3");
  mySong.play();
  
  //
  //
  lights();
  background(#EAC974);
  eRadius = 20;
  height3 = height/3;
  height23 = 2*height/2;
  fftLin = new FFT( mySong.bufferSize(), mySong.sampleRate() );
  fftLin.linAverages( 30 );
  //
}

void draw() {
  //
  color color1 = color(255-int(colorNoise),218+int(colorNoise),144);
  if(mySong.position() > 77712){
    color1 = color(185+int(colorNoise),253-int(colorNoise),255);
  }
  background(color1);
  push();
  translate(-25,0,-300);
  bgGradients();

  //
  
  push();
  translate(width/2,height/2);
  beat();
  pop();
  //println(mySong.position());
  pop();
  spectrum();
}
