void stamp(){
  strokeWeight(10);
  stroke(grey);
  fill(grey);
  rect(0,150,200,400);
  tactRect(200,450,50,100,grey);
  
  fill(black);
  textFont(arrow);
  textSize(50);
  text("j", 205,530);
  textFont(groove);
  textSize(40);
  textAlign(CENTER);
  text("Stamps",100,200);
  textAlign(BASELINE);
  
  //                         stamps
  fill(yellow);
  tactRect(60,210,80,100,yellow);
  image(snoopy,60,220,snoopy.width/4,snoopy.height/4);
  
  tactRect(40,330,120,70,yellow);
  image(snoopyStamp,50,335,snoopyStamp.width/3,snoopyStamp.height/3);
  
  tactRect(65,415,70,100,yellow);
  image(snoopySurf,67.5,420,snoopySurf.width/30,snoopySurf.height/30);
}

void stampClick(){
  if(mouseX>200 && mouseX<250 && mouseY>450 && mouseY<550){
    mode = MAIN;
  }
  
  //stamp selection
  if(mouseX>60 && mouseX<140 && mouseY>210 && mouseY <310){
    snoopyOn = true;
    snoopyStampOn = false;
    snoopySurfOn = false;
  }
  if(mouseX>40 && mouseX<160 && mouseY>330 && mouseY<400){
    snoopyOn = false;
    snoopyStampOn = true;
    snoopySurfOn = false;
  }
  if(mouseX>65 && mouseX<135 && mouseY>415 && mouseY<515){
    snoopyOn = false;
    snoopyStampOn = false;
    snoopySurfOn = true;
  }
}
