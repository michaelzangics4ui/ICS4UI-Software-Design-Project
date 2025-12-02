class Pencil extends Tool {
  
    
    Pencil(float s) {
        super(s);
        type = "Pencil";
    }
  
    

    void update() {
        if (isMouseDragged) {
            stroke(0);
            strokeWeight(size);
            line(pmouseX, pmouseY, mouseX, mouseY);
        }
    }
}