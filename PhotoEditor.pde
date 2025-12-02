color currentColor = color(0);
Tool currentTool;

void setup() {
    fullScreen();
    background(255);


}

void draw() {
    if (currentTool != null) {
        currentTool.update();
    }
    
}