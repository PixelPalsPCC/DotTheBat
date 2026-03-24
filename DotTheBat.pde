import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;

ArrayList<Point> dots = new ArrayList<>();
PImage batImage;

void setup(){
    size(973,1155);
    noFill();
    batImage = loadImage("30-Bat-DTD.png");
    image(batImage, 0, 0);
    dots.add(new Point(353, 253));// the starting point that is dot 1

    stroke(0);
    strokeWeight(2);
}

void draw(){
    beginShape();
        for (Point p : dots) {
            vertex(p.x,p.y);
        }
    endShape();
}

void mouseClicked(){
    println("vertex(",mouseX,",",mouseY,");");
    dots.add(new Point(mouseX,mouseY));
}

class Point {
    int x, y;
    // Constructor to initialize dots
    Point(int x, int y) {
        this.x = x;
        this.y = y;
    }
    // Overriding toString to make printing easy
    @Override
    public String toString() {
        return "(" + x + ", " + y + ")";
    }
}

