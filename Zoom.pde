class ZoomIn extends Tool {
  float zoomFactor = 1.5; 
  
  ZoomIn(float s){
    super(s);
    type = "ZoomIn";
  }
  void update(){
    PImage currentCanvas = get(0,200,width,height-200);
    
    int newWidth = int (currentCanvas.width * zoomFactor);
    int newHeight = int(currentCanvas.height * zoomFactor);

    currentCanvas.resize(newWidth, newHeight);
    fill(255);
    noStroke();
    rect(0, 200, width, height-200); 
    image(currentCanvas, 0, 200);

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
    PImage currentCanvas = get(0,200,width,height-200);
    
    int newWidth = int (currentCanvas.width * zoomFactor);
    int newHeight = int(currentCanvas.height * zoomFactor);

    currentCanvas.resize(newWidth, newHeight);
    fill(255);
    noStroke();
    rect(0, 200, width, height-200); 
    image(currentCanvas, 0, 200);
   
    currentTool = new Tool(1);
  }
}
