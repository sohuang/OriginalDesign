int colR = 0;
int colG = 0;
int colB = 0;

int rectX;
int rectY;
int rectS;
int space = 10;

void setup() {
  size(640, 360);
  rectS = ((width - space) / 8 - space);
  background(255);
}

void draw() {
  drawColorBar();
  stroke(colR, colG, colB);
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void drawColorBar() {
  noStroke();
  fill(147, 168, 172);
  rect(-1, height - (2 * space + rectS), width + 1, height - (2 * space + rectS));
  colorButton colRed = new colorButton(255, 0, 0, 1);
  colorButton colOra = new colorButton(255, 100, 0, 2);
  colorButton colYel = new colorButton(255, 255, 0, 3);
  colorButton colGre = new colorButton(0, 255, 0, 4);
  colorButton colCya = new colorButton(0, 255, 255, 5);
  colorButton colBlu = new colorButton(0, 0, 255, 6);
  colorButton colPur = new colorButton(100, 0, 255, 7);
  colorButton colMag = new colorButton(255, 0, 255, 8);
}

class colorButton {
  int newR;
  int newG;
  int newB;
  int xPos;
  int yPos;

  colorButton(int newR, int newG, int newB, int rectNum) {
    this.newR = newR;
    this.newG = newG;
    this.newB = newB;
    this.xPos = space + ((space + rectS) * (rectNum - 1));
    this.yPos = height - space - rectS;
    fill(newR, newG, newB);
    rect(xPos, yPos, rectS, rectS);
    this.mousePressed();
  }

  void changeColor() {
    colR = newR;
    colG = newG;
    colB = newB;
  }

  void mousePressed() {
    if (mouseX >= this.xPos && mouseX <= this.xPos + rectS && mouseY >= this.yPos && mouseY <= this.yPos + rectS) {
      this.changeColor();
    }
  }
}
