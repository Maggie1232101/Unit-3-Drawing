
void main(){
  strokeWeight(10);
  stroke(grey);
  fill(grey);
  strokeJoin(ROUND);
  tactRect(0,200,50,100,grey);
  tactRect(0,325,50,100,grey);
  tactRect(0,450,50,100,grey);
  textSize(100);
  fill(black);
  
  textFont(arrow);
  textSize(50);
  text("h", 5, 275);
  text("h",5,400);
  text("h",5,525);
  fill(grey);
  
  buttons.beginDraw();
  buttons.textFont(undo);
  buttons.textAlign(CENTER);
  buttons.textSize(50);
  textButton(buttons,"v",525,30);
  textButton(buttons,"u",560,30);
  
  buttons.textFont(groove);
  
  textButton(buttons,"New",600,25);
  textButton(buttons,"Save",650,25);
  textButton(buttons,"Load",700,25);

  buttons.endDraw();
  
  
}

//                                             main click
void mainClick(){
  //stamps
  if (snoopyOn == true){
    canvas.beginDraw();
    canvas.image(snoopy,mouseX, mouseY,snoopy.width/4,snoopy.height/4);
    canvas.endDraw();
  }
  else if (snoopyStampOn == true){
    canvas.beginDraw();
    canvas.image(snoopyStamp,mouseX,mouseY,snoopyStamp.width/3,snoopyStamp.height/3);
    canvas.endDraw();
  }
  else if (snoopySurfOn == true){
    canvas.beginDraw();
    canvas.image(snoopySurf,mouseX,mouseY,snoopySurf.width/30,snoopySurf.height/30);
    canvas.endDraw();
  }
  
  //modes
 if (mouseX<60 && mouseY < 310 && mouseY>190){
   mode = BRUSH;
  
 }
 if (mouseX<60 && mouseY <425 && mouseY>325){
   mode = THICKNESS;
 }
 if(mouseX<60 && mouseY <550 && mouseY>450){
   mode = STAMP;
 }
 //new i think?
 if(dist(mouseX,mouseY,600,25)<20){
   canvas.beginDraw();
   canvas.strokeWeight(10);
   canvas.stroke(black);
   canvas.fill(white);
   canvas.rect(40, 40, 710, 710);
   canvas.endDraw();
 }
 //save image
 if(dist(mouseX,mouseY,650,25)<20){
   selectOutput("Choose name for file","saveImage");
 }
 //import image
 if(dist(mouseX,mouseY,700,25)<20){
   selectInput("Pick an image to load", "openImage");
 } 
 //undo
 if(dist(mouseX,mouseY,525,30)<20 && lastState !=null){
   
   redoState = canvas.get();
   
   canvas.beginDraw();
   canvas.image(lastState,0,0);
   canvas.endDraw();
 }
 //redo
 if(dist(mouseX,mouseY,560,30)<20 && redoState != null){
   
   lastState = canvas.get();
   
   canvas.beginDraw();
   canvas.image(redoState,0,0);
   canvas.endDraw();
 }
}

//void save image
void saveImage(File f){
  if (f != null){
    PImage img = canvas.get(80,80, 1420, 1420);
    img.save(f.getAbsolutePath());
  }
}

//void import image
void openImage(File f){
  if (f != null){
    int n=0;
    while (n < 100){
      PImage pic = loadImage(f.getPath());
      canvas.beginDraw();
       canvas.image(pic,45,45,pic.width/2, pic.height/2);
       canvas.endDraw();
      n = n + 1;
    }
  }
}

//draw
void mouseDragged(){
  if(mode==MAIN){
    if(snoopyOn == false && snoopySurfOn == false && snoopyStampOn ==false){
      
      //drawing with the colours
  if (mouseX>40 && mouseX<750 && mouseY>40 && mouseY<750){
    canvas.beginDraw();
canvas.stroke(selectColour);
canvas.strokeWeight(thickSize);
canvas.line(pmouseX, pmouseY, mouseX, mouseY);
canvas.endDraw();;
  }}
  
  // drawing with stamps
  else if (snoopyOn == true){
    canvas.beginDraw();
    canvas.image(snoopy,mouseX, mouseY,snoopy.width/4,snoopy.height/4);
    canvas.endDraw();
  }
  else if (snoopyStampOn == true){
    canvas.beginDraw();
    canvas.image(snoopyStamp,mouseX,mouseY,snoopyStamp.width/3,snoopyStamp.height/3);
    canvas.endDraw();
  }
  else if (snoopySurfOn == true){
    canvas.beginDraw();
    canvas.image(snoopySurf,mouseX,mouseY,snoopySurf.width/30,snoopySurf.height/30);
    canvas.endDraw();
  }
  }
  
  //mode thickness
  if (mode == THICKNESS){
    thickDrag();
  }
}

void mousePressed(){
  if(mode == MAIN && mouseX>40 && mouseX<750 && mouseY>40 && mouseY<750){
    lastState = canvas.get();
  }
}
