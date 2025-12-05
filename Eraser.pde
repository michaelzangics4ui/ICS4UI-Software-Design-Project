class Eraser extends Tool {
    
    Eraser(float s) {
        super(s);
        type = "Eraser";
        currentColor = color(255);
    }
    
    void update() {
        if (isMouseDragged) {
            pushStyle();
            stroke(currentColor);
            strokeWeight(size);
            noFill();
            line(pmouseX, pmouseY, mouseX, mouseY);
            popStyle();
        }
    }
}