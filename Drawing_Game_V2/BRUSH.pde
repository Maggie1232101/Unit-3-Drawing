void brush(){
  stroke(grey);
  rect(0,150,200,400);
  tactileR(200,250,200,300);
  rect(200,200,50,100);
}

void brushClick(){
  if (mouseX>200 && mouseX<250 && mouseY>200 && mouseY<300){
    setup();
    mode = MAIN;
  }
}
