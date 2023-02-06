import ddf.minim.*;
import ddf.minim.analysis.*;
import peasy.*;
CameraState state;
PeasyCam cam;
Minim minim;
BeatDetect beat;
AudioPlayer mySong; //Childish Gambino Summertime magic?

void setup() {
  size(1280, 720, P3D);
  
  minim = new Minim(this);
  
  
  mySong = minim.loadFile("music.mp3");
  //mySong.play();
  
  background(255);
}

void draw() {
  bgGradients();
}
