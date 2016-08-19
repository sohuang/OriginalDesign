void setup()
{
	size(800,500);
	background(255, 255, 255);
}
void draw()
{
	mouseDraw();
}

void mouseDraw()
{
	if (mousePressed) {
		line(mouseX, mouseY, pmouseX, pmouseY);
	}
}

