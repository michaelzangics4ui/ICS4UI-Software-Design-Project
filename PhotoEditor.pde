import g4p_controls.*;
color currentColor = color(0, 0, 0);
Tool currentTool;
PImage screen;
PImage sample;
PImage currentScreen;
PVector topLeft;
PVector bottomRight;
int toolSize = 10;

void setup() {
    //fullScreen();
    size(800,600);
    background(255);
    currentTool = new Tool(1);
    sample = loadImage("guy.jpg");
    image(sample, 0, 200, width, height);
    createGUI();



}

void draw() {


    if (currentTool.type == "colDrop" || currentTool.type == "Select") {
        image(screen, 0, 0);
    }
    
    if (currentTool.type != "Crop" || !((CropTool)currentTool).isSelecting) {
      screen = get();
    }

    if (currentTool != null) {
        currentTool.update();
   

    }
    fill(255);
    rect(0, height - 30, 200, 30);
    fill(0);
    textSize(16);
    text("Current Tool: " + currentTool.type, 10, height - 10);




}
