class colDrop extends Tool {
  
  colDrop(float s) {
    super(s);
  }
  
  void applyTool() {
    int c = get(mouseX, mouseY);
    currentColor = c;
    println(currentColor);
  }
  
}