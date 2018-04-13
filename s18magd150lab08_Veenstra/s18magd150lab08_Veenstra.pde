//setting up global variables
  import processing.pdf.*;
  String[] tag_line;
  String source = "tag_lines.txt";
  String[] fonts = {"visitor2.ttf","LDFComicSans.ttf","Tannenberg-Shadow.ttf"};
  int Lines, speed, Fonts = fonts.length;
  float z;
  PFont[] tagLineFont = new PFont[Fonts];
  PFont Title, CurrentFont;
  String CurrentLine;
  PImage image;
  boolean recordToggle;
void setup(){
  z = width *1.5;
  speed = 5;
  Title = createFont(fonts[2], 36);
  textAlign(CENTER);
  imageMode(CENTER);
  //initialize fonts
  for (int x = 0; x < Fonts; x++){
    tagLineFont[x] = createFont(fonts[x], 24);
  }
  
  surface.setTitle("Hackerman: Enter the mainframe");
  image = loadImage("Hackerman.jpg");
  tag_line = loadStrings(source);
  Lines = tag_line.length;
  size(600,800); 
  tagLine();
}
void draw(){
  if (recordToggle){
  beginRecord(PDF, "HackerManPoster.pdf");
  }
  
  textAlign(CENTER);
  imageMode(CENTER);
  background(0);
  if(frameCount % 240 == 0){
  tagLine();
  }
  //image
  image(image,width/2,height/1.75, width, height/1.7);
  //text
  fill(255);
  textFont(Title);
  fill(0,255,0);
  text("Hackerman: Entering the mainframe", width/2, height/4);
  textFont(CurrentFont);
  text(CurrentLine, z, height-50);
  
  z = z- speed;
  if (z < -width){
   z = width * 1.5; 
  }
  if (recordToggle){
  endRecord();
  recordToggle = false;
  }
  
}
void mousePressed(){
 recordToggle = true; 
}

//randomizes tagline and font
void tagLine(){
 randomFont(int(random(2))); 
 randomTagline(int(random(Lines)));
}
void randomFont(int x){
  CurrentFont = tagLineFont[x];
  
}
void randomTagline(int x){
  CurrentLine =tag_line[x];
}