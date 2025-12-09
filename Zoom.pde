class ZoomIn extends Tool {
  float zoomFactor = 1.5; 
  
  ZoomIn(float s){
    super(s);
    type = "ZoomIn";
  }
  void update(){
    
    int newWidth = int (fullImage.width * zoomFactor);
    int newHeight = int(fullImage.height * zoomFactor);


    PImage zoomedImage = fullImage.copy();
    zoomedImage.resize(newWidth, newHeight);
    
    fullImage = zoomedImage;

    fill(255);
    noStroke();
    rect(0, 200, width, height-200); 
    image(fullImage, 0, 200);

    currentTool = new Tool(1);
  }
}


class ZoomOut extends Tool {
  float zoomFactor = 0.67; 
  
  ZoomOut(float s){
    super(s);
    type = "ZoomOut";
  }
  void update(){
    
    int newWidth = int (fullImage.width * zoomFactor);
    int newHeight = int(fullImage.height * zoomFactor);
    
    PImage zoomedImage = fullImage.copy();
    zoomedImage.resize(newWidth, newHeight);
    
    fullImage = zoomedImage;
    
    fill(255);
    noStroke();
    rect(0, 200, width, height-200); 
    image(fullImage, 0, 200);
   
    currentTool = new Tool(1);
  }
}
