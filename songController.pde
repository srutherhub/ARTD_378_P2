void mousePressed(){
  if (mySong.isPlaying()){
    mySong.pause();
  } else {mySong.play();}
}

void keyPressed(){
  int skipLength = 5000;
  if(keyCode == RIGHT && mySong.position()+skipLength < mySong.length()){
    mySong.skip(skipLength);
  }if(keyCode == LEFT && mySong.position() > skipLength){
    mySong.skip(-skipLength);
  } if(key == '5'){
    mySong.play( int(mySong.length() * 0.5 ) );
  }
}
