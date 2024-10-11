int totalDots; // Variable to store the total number of dots
int dieSize; // Variable for the size of the die

void setup() {
    size(500, 500); // Set a larger size for better visibility
    textAlign(CENTER, CENTER);
    noLoop();
    dieSize = width; // Set die size to cover the whole screen width
}

void draw() {
    background(255);
    Die bob = new Die(0, 0, dieSize); // Position the die at the top-left corner
    bob.show();
    totalDots = bob.getDots(); // Get the total dots from the die
    displayTotalDots(); // Display the total dots
}

void mousePressed() {
    redraw();
}

void displayTotalDots() {
    fill(0);
    textSize(32);
    text("Total Dots: " + totalDots, width / 2, height - 50); // Display total dots
}

class Die {
    boolean one, two, three, four, five, six;
    int myX, myY, size;

    Die(int x, int y, int s) {
        myX = x;
        myY = y;
        size = s; // Set the size of the die
        roll();
    }

    void roll() {
        one = two = three = four = five = six = false; // Reset
        int result = (int) (Math.random() * 6) + 1; // Roll the die
        switch (result) {
            case 1: one = true; break;
            case 2: two = true; break;
            case 3: three = true; break;
            case 4: four = true; break;
            case 5: five = true; break;
            case 6: six = true; break;
        }
    }

    int getDots() {
        if (one) return 1;
        if (two) return 2;
        if (three) return 3;
        if (four) return 4;
        if (five) return 5;
        if (six) return 6;
        return 0; // Fallback (should never happen)
    }

    void show() {
        noStroke();
        fill(255);
        rect(myX, myY, size, size); // Draw the die
        stroke(0); // Set stroke color for the border
        noFill();
        rect(myX, myY, size, size); // Draw a border around the die

        float dotSize = size * 0.1; // Calculate dot size based on die size

        // Draw the dots based on the die face value
        if (one) {
            ellipse(myX + size / 2, myY + size / 2, dotSize, dotSize);
        } else if (two) {
            ellipse(myX + size * 0.2, myY + size * 0.2, dotSize, dotSize);
            ellipse(myX + size * 0.8, myY + size * 0.8, dotSize, dotSize);
        } else if (three) {
            ellipse(myX + size * 0.2, myY + size * 0.8, dotSize, dotSize);
            ellipse(myX + size * 0.8, myY + size * 0.2, dotSize, dotSize);
            ellipse(myX + size / 2, myY + size / 2, dotSize, dotSize);
        } else if (four) {
            ellipse(myX + size * 0.2, myY + size * 0.2, dotSize, dotSize);
            ellipse(myX + size * 0.8, myY + size * 0.8, dotSize, dotSize);
            ellipse(myX + size * 0.8, myY + size * 0.2, dotSize, dotSize);
            ellipse(myX + size * 0.2, myY + size * 0.8, dotSize, dotSize);
        } else if (five) {
            ellipse(myX + size * 0.2, myY + size * 0.2, dotSize, dotSize);
            ellipse(myX + size * 0.8, myY + size * 0.8, dotSize, dotSize);
            ellipse(myX + size * 0.8, myY + size * 0.2, dotSize, dotSize);
            ellipse(myX + size * 0.2, myY + size * 0.8, dotSize, dotSize);
            ellipse(myX + size / 2, myY + size / 2, dotSize, dotSize);
        } else if (six) {
            ellipse(myX + size * 0.2, myY + size * 0.2, dotSize, dotSize);
            ellipse(myX + size * 0.8, myY + size * 0.8, dotSize, dotSize);
            ellipse(myX + size * 0.8, myY + size * 0.2, dotSize, dotSize);
            ellipse(myX + size * 0.2, myY + size * 0.8, dotSize, dotSize);
            ellipse(myX + size * 0.2, myY + size / 2, dotSize, dotSize);
            ellipse(myX + size * 0.8, myY + size / 2, dotSize, dotSize);
        }
    }
}
