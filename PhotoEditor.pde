import g4p_controls.*;
color currentColor = color(0, 0, 0);
Tool currentTool;
PImage screen;
PImage sample;
PImage currentScreen;
PImage fullImage; // this captures the complete, full resolution version of our image, including parts that might be bigger than the on-screen image. This can happen from clicking the zoom in button.
PVector topLeft;
PVector bottomRight;
int toolSize = 10;
int rotationCount = 0;
boolean textBoxActive;

void setup() {
    //fullScreen();
    size(800,600);
    background(255);
    currentTool = new Tool(1);
    sample = loadImage("guy.jpg");
    fullImage = sample.copy();
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
    rect(width-200, 0, width, 30);
    fill(0);
    textSize(16);
    text("Current Tool: " + currentTool.type, width-150, 20);




}
