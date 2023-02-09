float eRadius;

void beat(){
  if (mySong.position()>77712){
  push();
  beat.detect(mySong.mix);
  float a = map(eRadius, 20, 80, 60, 255);
  fill(60, 255, 0, a);
  if ( beat.isOnset() ) eRadius = 200;
  //rect(width/2, height/2, eRadius, eRadius);
  threeDShape(eRadius);
  eRadius *= .97;
  if ( eRadius < 20 ) eRadius = 20;
  pop();
  }else{
    threeDShape(100);
  }
}
