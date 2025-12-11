class Blur extends Tool {

        Blur(float s) {
            super(s);
            type = "Blur";
        }

        void update() {
            if (isMouseDragged) {
                pushStyle();
                noStroke();
                for (int i = 0; i < size; i++) {
                    float offsetX = random(-size / 2, size / 2);
                    float offsetY = random(-size / 2, size / 2);
                    fill(get(int(mouseX + offsetX), int(mouseY + offsetY)));
                    ellipse(mouseX + offsetX, mouseY + offsetY, size / 5, size / 5);
                }
                popStyle();
            }
        }
}