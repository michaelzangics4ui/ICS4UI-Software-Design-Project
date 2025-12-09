class CropTool extends Tool {
    PVector topLeft;
    PVector bottomRight;
    boolean isSelecting = false;
    PImage savedScreen;

    CropTool(float s) {
        super(s);
        type = "Crop";
    }

    void update() {
        // Draw selection rectangle while dragging
        if (isSelecting && topLeft != null && savedScreen != null) {
          

            pushStyle();
            noFill();
            stroke(0, 0, 255);
            strokeWeight(2);
            // Draw dashed rectangle
            float x1 = topLeft.x;
            float y1 = topLeft.y;
            float x2 = mouseX;
            float y2 = mouseY;
            rect(x1, y1, x2 - x1, y2 - y1);
            popStyle();
        }
    }
    void applyTool() {
        savedScreen = get();
        topLeft = new PVector(mouseX, mouseY);
        isSelecting = true;

    }

    void toolDone() {
        bottomRight = new PVector(mouseX, mouseY);
        isSelecting = false;
        
        if (topLeft != null && bottomRight != null && savedScreen != null) {
          float x1 = min(topLeft.x, bottomRight.x);
          float y1 = min(topLeft.y, bottomRight.y);
          float x2 = max(topLeft.x, bottomRight.x);
          float y2 = max(topLeft.y, bottomRight.y);
          
          if (x2 - x1 > 5 && y2 - y1 > 5) {
            PImage croppedImage = savedScreen.get(int(x1), int(y1), int(x2 - x1), int(y2 - y1));
            
            
            background(255);
            image(croppedImage, 0, 200);
            
            fullImage = croppedImage.copy();
            screen = get();
          }
          else { 
            println("cropped area is too small, crop cancelled.");
            background(255);
            image(savedScreen,0,200);
          }           
        }
        topLeft = null;
        bottomRight = null;
        savedScreen = null;
    }
}
