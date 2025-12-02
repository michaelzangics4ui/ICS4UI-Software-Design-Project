class Eraser extends Tool {
    
    Eraser(float s) {
        super(s);
        type = "Eraser";
        currentColor = color(255);
    }
    
    void update() {
        if (isMouseDragged) {
            stroke(currentColor);
            strokeWeight(size);
            line(pmouseX, pmouseY, mouseX, mouseY);
        }
    }
}