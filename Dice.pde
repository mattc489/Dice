void setup() {
    size(500, 300);
    textAlign(CENTER, CENTER);
    noLoop();
}

void draw() {
    background(255);
    for (int x = 10; x < 450; x += 60) {
        Die bob = new Die(x, 50); // Adjusted position
        bob.show();
    }
}

void mousePressed() {
    redraw();
}

class Die {
    boolean one, two, three, four, five, six;
    int myX, myY;

    Die(int x, int y) {
        myX = x;
        myY = y;
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

    void show() {
        noStroke();
        fill(255);
        rect(myX, myY, 50, 50);
        fill(0);
        if (one) {
            ellipse(myX + 25, myY + 25, 10, 10);
        } else if (two) {
            ellipse(myX + 10, myY + 10, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
        } else if (three) {
            ellipse(myX + 10, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 10, 10, 10);
            ellipse(myX + 25, myY + 25, 10, 10);
        } else if (four) {
            ellipse(myX + 10, myY + 10, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 10, 10, 10);
            ellipse(myX + 10, myY + 40, 10, 10);
        } else if (five) {
            ellipse(myX + 10, myY + 10, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 10, 10, 10);
            ellipse(myX + 10, myY + 40, 10, 10);
            ellipse(myX + 25, myY + 25, 10, 10);
        } else if (six) {
            ellipse(myX + 10, myY + 10, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 10, 10, 10);
            ellipse(myX + 10, myY + 40, 10, 10);
            ellipse(myX + 10, myY + 25, 10, 10);
            ellipse(myX + 40, myY + 25, 10, 10);
        }
    }
}
