Die die; // Declare a Die object
int dieValue; // To hold the total value of the die

void setup() {
    size(200, 200); // Set the window size
    die = new Die(width / 2, height / 2); // Create a Die object
    noLoop(); // Prevent continuous redrawing
}

void draw() {
    background(255); // Set background color to white
    die.show(); // Show the die
}

void mousePressed() {
    die.roll(); // Roll the die on mouse press
    redraw(); // Redraw the window
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
        fill(200); // Set die color
        rect(x - 25, y - 25, 50, 50, 10); // Draw die
        fill(0); // Set color for text
        textSize(32); // Set text size
        textAlign(CENTER, CENTER); // Center the text
        text(value, x, y); // Display die value
    }
}
