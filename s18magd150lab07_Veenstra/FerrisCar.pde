class FerrisCar{//class for the ferriswheel cars
  PVector Position;
  float x,y;
  int size, speed;
 FerrisCar(int Size){//constructor
    Position = new PVector(500,500);
    
    size = Size;

 }
  
 //sets up what the car looks like
 void draw(PVector Input){
      Input.sub(Position);
      Input.normalize();
      Input.mult(245);
      x = Input.x;
      y = Input.y;
      rectMode(CENTER);
      fill(255,0,0);
      rect(x,y,size,size);
      noFill();
      triangle(x-(size/2),y-(size/2),x,y-(size),x+(size/2),y-(size/2));
 }
}