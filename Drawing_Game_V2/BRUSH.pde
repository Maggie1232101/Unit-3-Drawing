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
  
  
}

void brushClick(){
  if (mouseX>200 && mouseX<250 && mouseY>200 && mouseY<300){
    mode = MAIN;
  }
  if(dist(mouseX,mouseY,50,250)<=30){
    selectColour=green;
  }
  if(dist(mouseX,mouseY,150,250)<=30){
    selectColour = blue;
  }
  if(dist(mouseX, mouseY, 50,350)<=30){
    selectColour = red;
  }
  if(dist(mouseX,mouseY, 150,350)<=30){
    selectColour = maroon;
  }
}
