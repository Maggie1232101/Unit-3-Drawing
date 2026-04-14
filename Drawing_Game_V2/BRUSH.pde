void brush(){
  
  strokeWeight(10);
  stroke(grey);
  fill(grey);
  rect(0,150,200,400);
  tactRect(200,200,50,100,grey);
  
  textFont(arrow);
  textSize(50);
  fill(black);
  text("j", 205,275);
  
  textFont(groove);
  textSize(40);
  text("Pallette",10,210);
  
  tactCircle(50,250,60,green);
  
  tactCircle(150,250,60,blue);
  
  tactCircle(50,350,60,red);
  
  tactCircle(150,350,60,maroon);
  
  tactCircle(50,450,60,white);
  
  tactCircle(150,450,60,black);
  
  
}

void brushClick(){
  if (mouseX>200 && mouseX<250 && mouseY>200 && mouseY<300){
    mode = MAIN;
  }
  if(dist(mouseX,mouseY,50,250)<=30){
    selectColour=green;
    snoopyOn = false;
    snoopyStampOn = false;
    snoopySurfOn = false;
  }
  if(dist(mouseX,mouseY,150,250)<=30){
    selectColour = blue;
    snoopyOn = false;
    snoopyStampOn = false;
    snoopySurfOn = false;
  }
  if(dist(mouseX, mouseY, 50,350)<=30){
    selectColour = red;
    snoopyOn = false;
    snoopyStampOn = false;
    snoopySurfOn = false;
  }
  if(dist(mouseX,mouseY, 150,350)<=30){
    selectColour = maroon;
    snoopyOn = false;
    snoopyStampOn = false;
    snoopySurfOn = false;
  }
  if(dist(mouseX,mouseY,50,450)<=30){
    selectColour = white;
    snoopyOn = false;
    snoopyStampOn = false;
    snoopySurfOn = false;
  }
  if(dist(mouseX,mouseY,150,450)<=30){
    selectColour = black;
    snoopyOn = false;
    snoopyStampOn = false;
    snoopySurfOn = false;
  }
}
