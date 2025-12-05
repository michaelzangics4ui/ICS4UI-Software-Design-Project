boolean isMouseDragged;
PImage lastScreen;



void mouseDragged() {
        isMouseDragged = true;
        
    }

void mouseReleased() {
        isMouseDragged = false;
        if (currentTool != null) {
            currentTool.toolDone();
        }
        bottomRight = new PVector(mouseX, mouseY);

    }

void keyPressed() {
    if (key == 'p' || key == 'P') {
        currentTool = new Pencil(5);
    }

    if (key == 'e' || key == 'E') {
        currentTool = new Eraser(50);
    }
    if (key == 'c' || key == 'C') {
        currentTool = new Select(5);
    }

    if (key == 'x' || key == 'X') {
        currentTool = new colDrop(1);
    }
    
    if (key == '-' || key == '_') {
        currentColor = color(255, 100, 0);
    }

    if (key == 'u' || key == 'U') {
        currentTool = new Undo(1);
    }

    if (key == 'r' || key == 'R') {
        currentTool = new Redo(1);
    }
}

void mousePressed() {
    if (currentTool != null) {
        lastScreen = get();
        currentTool.applyTool();
        println("Mouse pressed, tool applied");
        topLeft = new PVector(mouseX, mouseY);
    }
    



    
}

void mouseClicked() {
    if (currentTool != null) {
        currentTool.clickTool();
    }
    
}