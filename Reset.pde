class Reset extends Tool {
    
    Reset(float s) {
        super(s);
        type = "Reset";
    }
    
    void update() {
        // clears canvas
        fill(255);
        noStroke();
        rect(0, 0, width, height);
        
        // redraws entire image over
        PImage originalImage = loadImage("guy.jpg");
        fullImage = originalImage.copy(); // Reset the working image

        image(originalImage, 0, 200, width, height);
        rotationCount = 0;
        println("Image reset");
        
        // Switch back to default tool after reset
        currentTool = new Tool(1);
    }
}
