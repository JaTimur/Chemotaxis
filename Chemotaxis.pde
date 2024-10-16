Firework[] firework;
void setup()   
{     
  size(300,300);
  background(0);
  frameRate(10);
  firework=new Firework[5];
  for(int n=0;n<firework.length;n++){
    firework[n]=new Firework();
  }
}   
void draw()   
{    
  for(int n=0;n<firework.length;n++){
    firework[n].show();
    firework[n].move();
  }
}
class Firework    
{     
  int x,y,sizeX,sizeY,Color;
  Firework(){
    x=(int)(Math.random()*251);
    y=300;
    sizeX=10;
    sizeY=10;
    Color=color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move(){
    fill(0,15);
    rect(0,0,300,300);
    if(y<=50){
      x=(int)(Math.random()*251);
      y=300;
      Color=color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    }
    else{
      x=x+(int)(Math.random()*21)-10;
      if(x<=49){
        x=50;
      }
      else if(x>=251){
        x=251;
      }
      y=y-(int)(Math.random()*51);
    }
  }
  void show(){
    noStroke();
    fill(Color);
    sizeX=10;
    sizeY=10;
    ellipse(x,y,sizeX,sizeY);
    if(y<=50){
      for(int m=0;m<6;m++){
        for(int n=0;n<6;n++){
          fill(Color,n*2);
          sizeX=sizeX+5;
          sizeY=sizeY+5;
          ellipse(x,y,sizeX,sizeY);
        }
      }
    }
  } 
}
