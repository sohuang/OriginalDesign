void setup()
{
	size(100,100);
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

