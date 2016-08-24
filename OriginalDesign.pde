int diameter;

void setup() {
	size(600, 400);
	diameter = width/2;
	background(0);
	ellipseMode(RADIUS);
	colorMode(HSB, 360, 100, 100);
	noStroke();
	noLoop();
}

void draw() {
	background(0);
	for (int x = 0; x <= width; x+=diameter) {
		drawGradient(x, height/2);
	}
}

void drawGradient(float x, float y) {
	int radius = diameter / 2;
	float h = random(0, 360);
	for (int r = radius; r > 0; r--) {
		fill(h, 90, 90);
		ellipse(x, y, r, r);
		h = (h + 1) % 360;
	}
}

void mousePressed() {
	redraw();
}
