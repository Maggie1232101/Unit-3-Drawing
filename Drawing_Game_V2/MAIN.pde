
void main(){
  strokeWeight(10);
  stroke(grey);
  fill(grey);
  strokeJoin(ROUND);
  tactileR(0,60,190,310);
  rect(0,200,50,100);
  textSize(100);
  fill(black);
  text(">", 5,275);
  fill(grey);
}

void mainClick(){
 if (mouseX<60 && mouseY < 310 && mouseY>190){
   mode = BRUSH;
 }
}
