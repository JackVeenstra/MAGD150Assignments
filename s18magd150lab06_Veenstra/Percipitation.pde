class Percipitation{
 int x = int(random(-50,1200)), y = int(random(1000));
 color Material;
 int size, speed; 
 Percipitation(){
   size = int(random(1,10));
   speed = 10;
   Material = color(0,255,0);
 }
 void draw(){//when set to draw It seems to look cooler
   fill(Material);
   noStroke();
   x += speed / int(random(1,5));
   y += speed / int(random(1,5));
   ellipse(x,y,size,size);
   if (x > 1200){
    x =int(random(-50,600)); 
   }
   if (y> 1000){
    y = 0; 
   }
 }
}