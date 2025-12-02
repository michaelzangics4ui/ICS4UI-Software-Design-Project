class Crop extends Tool {
    PVector topLeft;
    PVector bottomRight;


    Crop(float s) {
        super(s);
        type = "Crop";
    }

    void update() {
    }

    void applyTool() {
        topLeft = new PVector(mouseX, mouseY);
    }

    void toolDone() {
        bottomRight = new PVector(mouseX, mouseY);
        
    }
}