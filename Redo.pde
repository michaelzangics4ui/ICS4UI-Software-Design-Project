class Redo extends Tool {
    Redo(float s) {
        super(s);
        this.type = "Redo";
    }

    void update() {
        if (currentScreen != null) {
            background(255);
            image(currentScreen, 0, 0);
        }
    }
}
