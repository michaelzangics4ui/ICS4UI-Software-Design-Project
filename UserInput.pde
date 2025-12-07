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
    //if (key == 'c' || key == 'C') {
    //    currentTool = new Select(5);
    //}

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
    // 1. Debugging: Print where we clicked to the console
    println("Mouse clicked at: " + mouseX + ", " + mouseY);
    
    // 2. Check if the mouse is in the UI area (Safe Zone)
    // We assume the UI is at the bottom. 
    // If your buttons are elsewhere, you must adjust 'clickedOnUI()' below.
    if (clickedOnUI() == false) {
        
        if (currentTool != null) {
            lastScreen = get(); // Save the state BEFORE drawing
            println(">>> Screen Saved (Valid Draw Action) <<<");
            
            currentTool.applyTool();
            topLeft = new PVector(mouseX, mouseY);
        }
    } else {
        println(">>> UI Click Detected - Save Skipped <<<");
    }
}

// Helper function to define where your buttons are
boolean clickedOnUI() {
    // CHANGE THIS VALUE if your UI is taller than 30 pixels
    int uiHeight = 40; 
    
    // Returns true if mouse is at the bottom of the screen
    if (mouseY > height - uiHeight) {
        return true;
    }
    return false;
}

void mouseClicked() {
    if (currentTool != null) {
        currentTool.clickTool();
    }
    
}
