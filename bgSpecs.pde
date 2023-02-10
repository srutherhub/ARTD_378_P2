Specs hello = new Specs(0,0,0);

void bgSpecs(){
  hello.update();
}

class Specs{
   float xpos,ypos,zpos;
   
   Specs(float x, float y, float z){
     xpos = x;
     ypos = y;
     zpos = z;
     
   }
   void update(){
     push();
     stroke(0);
     translate(xpos,ypos,zpos);
     circle(0,0,100);
     pop();
   }
   
}
