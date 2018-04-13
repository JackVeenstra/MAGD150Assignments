void setup()  {
  size(1000, 800);
  background(0);
  
}

void draw(){
  strokeCap(ROUND);
  stroke(255);
  strokeWeight(150);
  point(600,350);
  fill(12 );
  strokeWeight(0);
  noStroke();
  triangle(1000,0,0,800,1001,750);
  triangle(1000,150, 0,900,1001,750);
  rectMode(CORNER);
  stroke(1);
  
  fill(50);
  rect(-1, 700, 1001, 801);
  fill(55);
  rect(-1,650,1001,51);
  //house
  fill(65);
  rect(450,450,200,200);
  fill(75);
  rect(500,550,50,100 );
  strokeWeight(1);
  stroke(65);
  line(450,450,400,420);
  line(400,420,580,420);
  line(580,420,650,450);
  line(400,420,400,650);
  noStroke();
  fill(55);
  triangle(450,450, 400,420, 400,450);
  rect(400,450,50,200);
  fill(100);
  rect(580,550,40,50);
  stroke(0);
  strokeWeight(2);
  //blinds
  strokeCap(PROJECT);
  line(580,550,620,550);
  line(580,555,620,555);
  line(580,560,620,560);
  line(580,565,620,565);
  line(580,570,620,570);  
  line(580,575,620,575);
  line(580,580,620,580);
  line(580,585,620,585); 
  //sign
  strokeCap(SQUARE);
  strokeWeight(3);
  stroke(32);
  line(750,650,750,550);
  ellipseMode(RADIUS);
  ellipse(750, 550, 10, 10);
  
}
