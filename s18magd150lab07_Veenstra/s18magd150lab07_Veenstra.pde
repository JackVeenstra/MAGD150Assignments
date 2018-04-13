int radius = 500;
float Beta =0;
PVector mouse, Wheeel;
FerrisCar[] Wheel = new FerrisCar[10];
void setup(){
  size(1000,1000);
  for(int x =0; x<10; x++){
     Wheel[x] = new FerrisCar(50); 
  }
}
void draw(){
  background(50,90,155);
  mouse = new PVector(mouseX,mouseY);
  
  for(int x =0; x<8; x++){
    pushMatrix();
    
    translate(500,500);
    Wheeel = new PVector(1000,500);
    rotate(QUARTER_PI*(Beta)+(x*QUARTER_PI));
    pushMatrix();
    stroke(55,55,200);
    strokeWeight(10);
    translate(-500,-500);
    line(500,250,500,750);
    popMatrix();
    stroke(0);
    strokeWeight(1);
    Wheel[x].draw(Wheeel);
    popMatrix();
  }
  
  noFill();
  ellipseMode(CENTER);
  stroke(55,55,200);
  strokeWeight(10);
  ellipse(500,500,radius,radius);
  stroke(50,50,50);
  triangle(200,900,500,500,800,900);
  fill(10,200,75);
  rectMode(CORNERS);
  rect(0,1050,1000,900);
  
  Beta += 0.01;
}