int wetness;
Percipitation[] Radiation;
void setup(){
  colorMode(RGB);
  size(1200,1000);
  background(25,70,75);
  wetness = ((width/int(random(1,10)))+6);//randomizes total number of fallout particles
  Radiation = new Percipitation[wetness];
  for (int x= 0; x < wetness; x++){
   Radiation[x] = new Percipitation(); 
  }
}
void draw(){
  background(25,70,75);//sets background
  for(int x = 0; x < wetness; x++){//updates all objects 
  Radiation[x].draw();//calls class draw function
  }
  colorMode(HSB);
  fill(70,100,60);
  ellipse(-25,-10, 200,90);
  ellipse(250,-10, 400,100);
  ellipse(550,-5, 600,90);
  ellipse(750,2, 900,100);
  colorMode(RGB);
  fill(50,24,20);
  rect(0,950,1200,1000);
}