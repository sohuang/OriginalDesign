int buttonSize;
int buttonSpacing;
int buttonX, buttonY;
boolean buttonOver = false;

void setup() {
	size(800,500);
	background(255, 255, 255);
	buttonSize = ((height - buttonSpacing) / 7) - buttonSpacing;
	buttonSpacing = 10;
	buttonX = buttonSpacing;
	buttonY = buttonSpacing;
}

void draw() {
	mouseDraw();
}

void mouseDraw() {
	fill(0, 255, 0);
	rect(buttonX, buttonY, buttonSize, buttonSize);
	if (mousePressed) {
		if (buttonOver) {
			stroke(0, 255, 0);
		} else {
			stroke(0);
		}
		line(mouseX, mouseY, pmouseX, pmouseY);
	}
}

void update(int x, int y) {
	if (overRect(buttonX, buttonY, buttonSize, buttonSize)) {
		rectOver = true;
	} else {
		rectOver = false;
	}
}

boolean overRect(int x, int y, int width, int height) {
	
}