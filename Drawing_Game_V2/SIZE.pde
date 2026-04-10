void thickness(){
  
  thickSize = (map(sliderY,210,540,5,75));
  
  strokeWeight(10);
  stroke(grey);
  fill(grey);
  rect(0,150,200,400);
  tactRect(200,325,50,100,grey);
  
  
  fill(black);
  textFont(arrow);
  textSize(50);
  text("j", 205,400);
  textFont(groove);
  textSize(40);
  textAlign(CENTER);
  text("Size",100,200);
  textAlign(BASELINE);
  
  stroke(0);
  line(100,210,100,540);
  fill(selectColour);
  stroke(selectColour);
  circle(100,sliderY,thickSize);
}

void thickClick(){
  if (mouseX>200 && mouseX<250 && mouseY>350 && mouseY<450){
    mode = MAIN;
  }
}

void thickDrag(){
  if(dist(mouseX,mouseY,100,sliderY)<=50 && mouseY>210 && mouseY<540){
    sliderY = mouseY;
  }
}
