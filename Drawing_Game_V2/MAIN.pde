
void main(){
  strokeWeight(10);
  stroke(grey);
  fill(grey);
  strokeJoin(ROUND);
  tactileR(0,60,190,310);
  rect(0,200,50,100);
  textSize(100);
  fill(black);
  
  PFont arrow = createFont("Littlearrows-Regular.otf",50);
  textFont(arrow);
  text("h", 5, 275);
  fill(grey);
  
}

void mainClick(){
 if (mouseX<60 && mouseY < 310 && mouseY>190){
   mode = BRUSH;
  
 }
}

void mouseDragged(){
  if (mouseX>40 && mouseX<710 && mouseY>40 && mouseY<710){
    canvas.beginDraw();
canvas.stroke(selectColour);
canvas.strokeWeight(5);
canvas.line(pmouseX, pmouseY, mouseX, mouseY);
canvas.endDraw();;
  }
}
