float rotAngle = 45;
int w= 15;
int h= 300;
int x, y;
float R, G, B;
float tranX= 100;
float tranY= 50;
  
float speedX;
float speedY;

void setup(){
  size (750,750);
  
  speedX = 4;
  speedY = 5;
  x= width;
  y=height;
}

void draw(){
  fill(R, G, B);
  pushMatrix(); // remembers the translation / rotation beneath it. 
  translate(tranX, tranY);
  rotate(radians(rotAngle));
  rectMode(CENTER);
  rect(x,y,w,h);
  if (dist(mouseX, mouseY, 90, 90)<35 && mousePressed){
     tranX= random(0, 900);
     tranY= random(0, 900);
     println("working");
     
  }else{
    rotAngle +=45; 
    tranX= 100;
    tranY= 80;
   
    
  }
  
 
  popMatrix();
fill(R, G, B);
ellipse (99, 80, 70, 70);
  
  
x+=speedX;
y+=speedY;

 if (x > width  || x < 0) {
    x -= speedX;
    speedX = -speedX;
  }
  
  if (y> height  || y < 0) {
   y -= speedY;
    speedY = -speedY;
  } 
    R = map(x, 0, width, 255 , 5);  
    B = map (y, 0, height, 0, 246);
    G= map (y, 0, height, 0 , 252);
 
}