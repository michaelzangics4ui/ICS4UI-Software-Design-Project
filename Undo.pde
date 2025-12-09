class Undo extends Tool {

    Undo(float s) {
        super(s);
        type = "Undo";
        currentScreen = get();

    }

    void update() {
        println("Undid last change");
        if (lastScreen != null) {
            println("Drawing lastScreen - size: " + lastScreen.width + "x" + lastScreen.height);
            background(255);
            image(lastScreen, 0, 0);
            println("lastScreen drawn!");
        }
    }

    
}
