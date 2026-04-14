int w, d1, d2, d3, d4, d5, d6;

PImage lastState;
PImage redoState;

PImage snoopyStamp;
PImage snoopy;
PImage snoopySurf;
boolean snoopyStampOn;
boolean snoopyOn;
boolean snoopySurfOn;

PFont groove;
PFont arrow;
PFont undo;

color bc;
color black = #000000;
color cream = #edddd4;
color green = #66A566;
color blue = #197278;
color red = #F07416;
color maroon = #772e25;
color white = #F5F5F5;
color grey = #A5A5A5;
color yellow = #F3FAAC;

PGraphics canvas;
PGraphics buttons;

color selectColour;
float sliderY;
float thickSize;

final int MAIN = 1;
final int BRUSH = 2;
final int THICKNESS = 3;
final int STAMP = 4;
int mode;


void setup() {
  snoopyStamp = loadImage("snoopy stamp.jpeg");
  snoopy = loadImage("snoopy no background.png");
  snoopySurf = loadImage("SnoopySurf.jpg");
  
  sliderY = 300;
  thickSize = 35;

  groove = createFont("SundaySchool-Regular.otf", 20);
  arrow = createFont("Littlearrows-Regular.otf", 20);
  undo = createFont("Arrows.ttf", 20);
  w= 5;
  mode = MAIN;
  size(800, 800);


  canvas = createGraphics(800, 800);

  buttons = createGraphics(800, 800);

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
  image(buttons, 0, 0);
  if (mode == MAIN) {
    main();
  }
  if (mode == BRUSH) {
    brush();
  }
  if (mode == THICKNESS) {
    thickness();
  }
  if (mode ==   STAMP) {
    stamp();
  }
  }

  void tactRect(int x, int y, int w, int h, int c) {

    if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
      stroke(black);
    } else {
      stroke(c);
    }
    rect(x, y, w, h);
  }
  
  //circle button
  void tactCircle(int x, int y, int d, int c) {
    if (dist(mouseX, mouseY, x, y)<d/2) {
      strokeWeight(20);
    } else {
      strokeWeight(5);
    }
    stroke(c);
    if (selectColour == c) {
      stroke(yellow);
      strokeWeight(5);
    } else {
      stroke(c);
    }
    fill(c);
    circle(x, y, d);
  }

//                                        text buttons
  void textButton(PGraphics pg, String label, float x, float y) {
    if (dist(mouseX, mouseY, x, y)<20) {
      pg.fill(0);
    } else {
      pg.fill(grey);
    }
    pg.text(label, x, y);
  }
  
  //                            clicks
  void mouseReleased() {
    if (mode == MAIN) {
      mainClick();
    }
    if (mode == BRUSH) {
      brushClick();
    }
    if (mode == THICKNESS) {
      thickClick();
    }
    if (mode == STAMP){
      stampClick();
    }
  }
