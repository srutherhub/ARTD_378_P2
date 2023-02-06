float eRadius;

void beat(){
  if (mySong.position()>77712){
  push();
  beat.detect(mySong.mix);
  float a = map(eRadius, 20, 80, 60, 255);
  fill(60, 255, 0, a);
  if ( beat.isOnset() ) eRadius = 80;
  //rect(width/2, height/2, eRadius, eRadius);
  threeDShape(100+eRadius);
  eRadius *= .99;
  if ( eRadius < 20 ) eRadius = 20;
  pop();
  }else{
    threeDShape(100);
  }
}
