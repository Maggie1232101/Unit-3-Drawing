
color black = #000000;
color cream = #F2E2A9;
color blue = #9FCFF2;
color sunset = #F7A057;
color purple = #C98CC6;

color selectColour;

int w;
float sliderX;

void setup(){
 size(600,600);
 strokeWeight(5);
 stroke(black);
 w = 5;
 sliderX = 110;
  selectColour = black;
   background(cream);
  
  fill(255);
  rect(200,100,375,400);
}

void draw(){
  stroke(black);
  strokeWeight(5);
  
  fill(blue);
  circle(100,150,100);
  
  fill(sunset);
  circle(100,300,100);
  
  fill(purple);
  circle(100,450,100);
  
  strokeJoin(ROUND);
  strokeWeight(5);
  fill(#AFAEAA);
  rect(10,10,200,50);
  strokeWeight(w);
  stroke(selectColour);
  line(25,35,195,35);
  fill(0);
  strokeWeight(5);
  stroke(0);
  circle(sliderX, 35, 25);
  stamp(400,15);
  
}

void mouseReleased(){
  // select a colour
  if (dist(mouseX, mouseY, 100,150)<=50){
    selectColour = blue;
  }
  if (dist(mouseX, mouseY, 100,300)<=50){
    selectColour = sunset;
  }
  if (dist(mouseX, mouseY, 100,450)<= 50){
    selectColour = purple;
  }
  
}

void mouseDragged(){
  if (mouseX>200 && mouseX<575 && mouseY>100 && mouseY <500){
    stroke(selectColour);
    strokeWeight(w);
    line(pmouseX, pmouseY, mouseX, mouseY);
    stroke(0);
  }
  if (mouseX>35 && mouseX<185 && mouseY>10 && mouseY<60){
    sliderX = mouseX;
    w = (mouseX - 35)/6;
  }
}

void stamp(int x,int y){
  pushMatrix();
  translate(x,y);
  
  fill(0);
  rect(0,0,60,40);
  noStroke();
  fill(255);
  rect(20,0,20,40);
  fill(255,0,0);
  rect(0,0,20,40);
  rect(40,0,20,40);
  circle(30,20,18);

  popMatrix();
  
}
