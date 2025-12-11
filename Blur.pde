class Blur extends Tool {

        Blur(float s) {
            super(s);
            type = "Blur";
        }

        void update() {
            if (isMouseDragged) {
                pushStyle();
                noStroke();
                for (int i = 0; i < toolSize; i++) {
                    float offsetX = random(-toolSize / 2, toolSize / 2);
                    float offsetY = random(-toolSize / 2, toolSize / 2);
                    fill(get(int(mouseX + offsetX), int(mouseY + offsetY)));
                    ellipse(mouseX + offsetX, mouseY + offsetY, toolSize / 5, toolSize / 5);
                }
                popStyle();
            }
        }
}
