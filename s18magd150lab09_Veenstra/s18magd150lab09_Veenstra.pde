import processing.video.*;
import processing.sound.*;
//music by: MUSIC COMPOSER / MUSICIAN JOHN MAYFIELD  2013 UK
//https://www.youtube.com/watch?v=nFM61u1VPtE
//movie from: https://www.youtube.com/watch?v=gvmnvP4FSK0

//neither are my works

int power = 0;
Movie movie;
SoundFile Music;
void setup(){
  size(750,550);
  Music = new SoundFile(this, "Music.mp3");
  movie = new Movie(this, "IcelandsAtlanticPuffins.Mp4");
  movie.loop();
}
void draw(){
  if (power == 0){
    staticScreen();
  } else {
   //litterally everthing happens here
   //first the movie frames
   tint(random(255), random(255), random(255));
   image(movie,0,0);
   //then the bar with scrolling text
   noStroke();
   fill(250,250,0);
   rect(-5,500,1050,600);
   fill(random(255),random(255),random(255));
   textSize(45);
   text("PUFFINS!!!",(frameCount%1050)-300,535);
   //and the satan music rates
   Music.rate(random(7));
 }
}
void staticScreen(){
  loadPixels();
  for(int x =0; x< pixels.length; x++){
    color random = color(random(255),random(255),random(255));
    pixels[x] = random;
  }
  updatePixels();  
}
void mousePressed(){
  //toggles states between static and 'documentery' playing
 if(power != 1){
  power = 1;
  Music.loop();
  Music.cue(random(200));
 } else {
  power = 0;
  Music.stop();
 }
}
void movieEvent(Movie movie){
  movie.read();
}