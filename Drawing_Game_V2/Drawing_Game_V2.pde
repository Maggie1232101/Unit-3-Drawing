int w, d1, d2, d3, d4, d5, d6;

color black = #000000;
color cream = #edddd4;
color green = #283d3b;
color blue = #197278;
color red = #c44536;
color maroon = #772e25;
color white = #F5F5F5;
color grey = #A5A5A5;

PGraphics canvas;

color selectColour;

final int MAIN = 1;
final int BRUSH = 2;
final int SIZE = 3;
final int SAVE = 4;
int mode;


void setup() {
  w= 5;
  mode = MAIN;
  size(800, 800);
 
  canvas = createGraphics(800, 800);

  canvas.beginDraw();
  canvas.background(cream);
  canvas.stroke(black);
  canvas.strokeWeight(10);
  canvas.fill(white);
  canvas.rect(40, 40, 710, 710);
  canvas.endDraw();
}

void draw() {
  image(canvas, 0, 0);
  if (mode == MAIN) {
    main();
  }
  if (mode == BRUSH) {
    brush();
  }
}

void tactileC(int x, int y, int r) {
  if (dist(mouseX, mouseY, x, y)<r) {
    strokeWeight(20);
  } else {
    strokeWeight(5);
  }
}

void tactileR(int x1, int x2, int y1, int y2) {
  if (mouseX > x1 && mouseX<x2 && mouseY>y1 && mouseY<y2) {
    stroke(black);
  } else {
    stroke(grey);
  }
}

void mouseReleased() {
  if (mode == MAIN) {
    mainClick();
  }
  if (mode == BRUSH) {
    brushClick();
  }
}
