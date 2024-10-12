void setup() {
    size(100, 100); 
    die = new Die(width / 2, height / 2); 
    noLoop(); 
}

void draw() {
    background(255); 
    die.show(); 
    displayTotal();
}

void mousePressed() {
    die.roll(); 
    redraw(); 
}

void displayTotal() {
    fill(0); 
    textSize(16); 
    textAlign(CENTER, CENTER); 
    text("Total: " + die.value, width / 2, height / 2 + 50); 
}

class Die {
    int x, y; 
    int value; 

    Die(int x, int y) { 
        this.x = x;
        this.y = y;
        roll(); 
    }

    void roll() {
        value = (int) random(1, 7);
    }

    void show() {
        fill(255); 
        rect(x - 25, y - 25, 50, 50, 10);

        
        fill(0); 
        if (value == 1) {
            ellipse(x, y, 10, 10);
        } else if (value == 2) {
            ellipse(x - 20, y - 20, 10, 10);
            ellipse(x + 20, y + 20, 10, 10);
        } else if (value == 3) {
            ellipse(x - 20, y - 20, 10, 10);
            ellipse(x, y, 10, 10);
            ellipse(x + 20, y + 20, 10, 10);
        } else if (value == 4) {
            ellipse(x - 20, y - 20, 10, 10);
            ellipse(x + 20, y - 20, 10, 10);
            ellipse(x - 20, y + 20, 10, 10);
            ellipse(x + 20, y + 20, 10, 10);
        } else if (value == 5) {
            ellipse(x - 20, y - 20, 10, 10);
            ellipse(x + 20, y - 20, 10, 10);
            ellipse(x, y, 10, 10);
            ellipse(x - 20, y + 20, 10, 10);
            ellipse(x + 20, y + 20, 10, 10);
        } else if (value == 6) {
            ellipse(x - 20, y - 20, 10, 10);
            ellipse(x - 20, y, 20, 10);
            ellipse(x - 20, y + 20, 10, 10);
            ellipse(x + 20, y - 20, 10, 10);
            ellipse(x + 20, y, 20, 10);
            ellipse(x + 20, y + 20, 10, 10);
        }
    }
}
