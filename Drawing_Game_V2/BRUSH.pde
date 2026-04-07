void brush(){
  
  strokeWeight(10);
  stroke(grey);
  fill(grey);
  rect(0,150,200,400);
  tactileR(200,250,200,300);
  rect(200,200,50,100);
  
  fill(black);
  text("b", 205,275);
  
  stroke(green);
  strokeWeight(5);
  fill(green);
  tactileC(50,200,25);
  circle(50,200,50);
  
  stroke(blue);
  strokeWeight(5);
  fill(blue);
  tactileC(150,200,25);
  circle(150,200,50);
  
  stroke(red);
  strokeWeight(5);
  fill(red);
  tactileC(50,300,25);
  circle(50,300,50);
  
  stroke(maroon);
  fill(red);
  tactileC(150,300,25);
  circle(150,300,50);
  
  
  
}

void brushClick(){
  if (mouseX>200 && mouseX<250 && mouseY>200 && mouseY<300){
    mode = MAIN;
  }
  if(dist(mouseX,mouseY,50,200)<=25){
    selectColour=green;
  }
  if(dist(mouseX,mouseY,150,200)<=25){
    selectColour = blue;
  }
  if(dist(mouseX
}
