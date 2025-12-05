color currentColor = color(0, 0, 0);
Tool currentTool;
PImage screen;
PImage sample;
PImage currentScreen;
PVector topLeft;
PVector bottomRight;

void setup() {
    fullScreen();
    background(255);
    currentTool = new Tool(1);
    sample = loadImage("20251126_212316.jpg");
    image(sample, 0, 0, width, height);



}

void draw() {


    if (currentTool.type == "colDrop" || currentTool.type == "Crop" || currentTool.type == "Select") {
        image(screen, 0, 0);
    }
    screen = get();

    if (currentTool != null) {
        currentTool.update();
    

    }
    fill(255);
    rect(0, height - 30, 200, 30);
    fill(0);
    textSize(16);
    text("Current Tool: " + currentTool.type, 10, height - 10);




}