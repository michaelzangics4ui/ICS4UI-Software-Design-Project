class Undo extends Tool {

    Undo(float s) {
        super(s);
        type = "Undo";
        currentScreen = get();

    }

    void update() {
        println("Undo.update() called, lastScreen is: " + (lastScreen != null ? "NOT NULL" : "NULL"));
        if (lastScreen != null) {
            println("Drawing lastScreen - size: " + lastScreen.width + "x" + lastScreen.height);
            background(255);
            image(lastScreen, 0, 0);
            println("lastScreen drawn!");
        }
    }

    
}
