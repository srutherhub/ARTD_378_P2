import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
BeatDetect beat;
AudioPlayer mySong; //Childish Gambino Summertime Magic
FFT fftLin;



void setup() {
  //
  //size(1280, 720, P3D);
  fullScreen(P3D);
  pixelDensity(2);
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
  fftLin.linAverages( 256 );
  //
  for (int i=0; i<arrSpecs.length; i++) {
    arrSpecs[i] = new Specs(random(-150, width+150), random(-height*2, 0), random(0, 200));
  }
  for (int i=0; i<arrBox.length; i++) {
    arrBox[i] = new spaceBox(random(-500, width+500), random(-height*2, height*2), random(-100, -1000));
  }
}

void draw() {
  println(mySong.position());
  //
  color color1 = color(3-int(colorNoise), 147+int(colorNoise), 140);
  if (mySong.position() > 77712) {
    color1 = color(242+int(colorNoise), 94-int(colorNoise), 94);
  }
  background(color1);
  spectrum();
  push();
  translate(-25, 0, -300);
  displayBox();
  bgGradients();
  //
  if (mySong.position()>20266) {
    bgSpecs();
    bgSpecs();
  }

  push();
  translate((width/2)+21, height/2);
  beat();
  pop();
  if (mySong.position() >39381 ) {
    push();
    translate(19, 0);
    secondCircle();
    pop();
  }

  //println(mySong.position());
  pop();
}
