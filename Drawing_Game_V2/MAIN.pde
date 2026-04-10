
void main(){
  strokeWeight(10);
  stroke(grey);
  fill(grey);
  strokeJoin(ROUND);
  tactRect(0,200,50,100,grey);
  tactRect(0,325,50,100,grey);
  textSize(100);
  fill(black);
  
  textFont(arrow);
  textSize(50);
  text("h", 5, 275);
  text("h",5,400);
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

  buttons.endDraw();
  
  
}

void mainClick(){
 if (mouseX<60 && mouseY < 310 && mouseY>190){
   mode = BRUSH;
  
 }
 if (mouseX<60 && mouseY <425 && mouseY>325){
   mode = THICKNESS;
 }
 if(dist(mouseX,mouseY,600,25)<20){
   canvas.beginDraw();
   canvas.strokeWeight(10);
   canvas.fill(white);
   canvas.rect(40, 40, 710, 710);
   canvas.endDraw();
 }
 if(dist(mouseX,mouseY,650,25)<20){
   selectOutput("Choose name for file","saveImage");
 }
}

void saveImage(File f){
  if (f != null){
    PImage canvas = get(40,40,710,710);
    canvas.save(f.getAbsolutePath());
  }
}

void mouseDragged(){
  if(mode==MAIN){
  if (mouseX>40 && mouseX<710 && mouseY>40 && mouseY<710){
    canvas.beginDraw();
canvas.stroke(selectColour);
canvas.strokeWeight(thickSize);
canvas.line(pmouseX, pmouseY, mouseX, mouseY);
canvas.endDraw();;
  }}
  
  if (mode == THICKNESS){
    thickDrag();
  }
}
