void setup() {
    size(200, 200); // Set the window size
    die = new Die(width / 2, height / 2); // Create a Die object
    noLoop(); // Prevent continuous redrawing
}

void draw() {
    background(255); // Set background color to white
    die.show(); // Show the die
    displayTotal(); // Display the total value
}

void mousePressed() {
    die.roll(); // Roll the die on mouse press
    redraw(); // Redraw the window
}

void displayTotal() {
    fill(0); // Set color for text
    textSize(16); // Set text size
    textAlign(CENTER, CENTER); // Center the text
    text("Total: " + die.value, width / 2, height / 2 + 50); // Display total value below the die
}

class Die {
    int x, y; // Position of the die
    int value; // Value of the die (1-6)

    Die(int x, int y) { // Constructor
        this.x = x;
        this.y = y;
        roll(); // Roll the die when created
    }

    void roll() {
        value = (int) random(1, 7); // Random value between 1 and 6
    }

    void show() {
        fill(255); // Set die color to white
        rect(x - 25, y - 25, 50, 50, 10); // Draw die face

        // Draw dots based on the die value
        fill(0); // Set dot color to black
        if (value == 1) {
            ellipse(x, y, 10, 10);
        } else if (value == 2) {
            ellipse(x - 10, y - 10, 10, 10);
            ellipse(x + 10, y + 10, 10, 10);
        } else if (value == 3) {
            ellipse(x - 10, y - 10, 10, 10);
            ellipse(x, y, 10, 10);
            ellipse(x + 10, y + 10, 10, 10);
        } else if (value == 4) {
            ellipse(x - 10, y - 10, 10, 10);
            ellipse(x + 10, y - 10, 10, 10);
            ellipse(x - 10, y + 10, 10, 10);
            ellipse(x + 10, y + 10, 10, 10);
        } else if (value == 5) {
            ellipse(x - 10, y - 10, 10, 10);
            ellipse(x + 10, y - 10, 10, 10);
            ellipse(x, y, 10, 10);
            ellipse(x - 10, y + 10, 10, 10);
            ellipse(x + 10, y + 10, 10, 10);
        } else if (value == 6) {
            ellipse(x - 10, y - 10, 10, 10);
            ellipse(x - 10, y, 10, 10);
            ellipse(x - 10, y + 10, 10, 10);
            ellipse(x + 10, y - 10, 10, 10);
            ellipse(x + 10, y, 10, 10);
            ellipse(x + 10, y + 10, 10, 10);
        }
    }
}
