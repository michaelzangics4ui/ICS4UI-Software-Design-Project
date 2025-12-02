boolean isMouseDragged;



void mouseDragged() {
        isMouseDragged = true;
        
    }

void mouseReleased() {
        isMouseDragged = false;
        if (currentTool != null) {
            currentTool.toolDone();
        }

    }

void keyPressed() {
    if (key == 'p' || key == 'P') {
        currentTool = new Pencil(5);
    }

    if (key == 'e' || key == 'E') {
        currentTool = new Eraser(50);
    }
    if (key == 'c' || key == 'C') {
        currentTool = new Crop(5);
    }

    if (key == 'x' || key == 'X') {
        currentTool = new colDrop(1);
    }
}

void mousePressed() {
    if (currentTool != null) {
        currentTool.applyTool();
    }
    
}

