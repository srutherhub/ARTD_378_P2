import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
BeatDetect beat;
AudioPlayer mySong; //Childish Gambino Summertime Magic

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
  //
}

void draw() {
  //
  translate(0,0,-300);
  bgGradients();
  //beat();
  //
  
  push();
  translate(width/2,height/2);
  beat();
  pop();
  //println(mySong.position());
}
