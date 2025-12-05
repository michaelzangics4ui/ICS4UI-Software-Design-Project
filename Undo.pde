
class Undo extends Tool {

    Undo(float s) {
        super(s);
        type = "Undo";
        currentScreen = get();

    }

    void update() {
        if (lastScreen != null) {
            background(255);
            image(lastScreen, 0, 0);
    }
}

    
}