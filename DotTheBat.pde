import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;

ArrayList<Point> dots = new ArrayList<>();
PImage batImage;

void setup(){
    size(1000,574);
    noFill();
    batImage = loadImage("Bat.png");
    dots.add(new Point(33,194));// the starting point that is dot 1

    
    
}

void draw(){
    int b = ((keyPressed && key == ' ' )|| mousePressed) ? 1 : 0;
    int m = (mousePressed) ? 1 : 0;
    
    if(m==0){
        stroke(64);
        strokeWeight(8);
        background(0);
        
        point( 34 , 193 );text( "1",34 , 193 );
        point( 112 , 169 );
        point( 171 , 140 );
        point( 213 , 115 );
        point( 260 , 164 );
        point( 298 , 215 );
        point( 349 , 264 );
        point( 394 , 287 );
        point( 423 , 254 );
        point( 428 , 216 );
        point( 470 , 230 );
        point( 485 , 211 );
        point( 514 , 221 );
        point( 537 , 204 );
        point( 559 , 244 );
        point( 580 , 268 );
        point( 640 , 227 );
        point( 694 , 158 );
        point( 736 , 88 );
        point( 776 , 30 );
        point( 843 , 53 );
        point( 922 , 74 );
        point( 965 , 88 );
        point( 914 , 138 );
        point( 878 , 184 );
        point( 853 , 235 );
        point( 783 , 249 );
        point( 733 , 298 );
        point( 717 , 344 );
        point( 707 , 388 );
        point( 656 , 397 );
        point( 598 , 419 );
        point( 555 , 449 );
        point( 529 , 492 );
        point( 514 , 531 );
        point( 483 , 471 );
        point( 443 , 437 );
        point( 394 , 418 );
        point( 347 , 416 );
        point( 306 , 427 );
        point( 284 , 382 );
        point( 254 , 344 );
        point( 226 , 325 );
        point( 187 , 313 );
        point( 152 , 321 );
        point( 128 , 288 );
        point( 99 , 247 );
        point( 61 , 221 );
        point( 39 , 203 );
        point( 32 , 192 );
    }
    if(b==0){
        stroke(255, 215, 0);
        strokeWeight(4);
        background(0);
        image(batImage, 0, 0);
    }
    beginShape();
        stroke(255, 215, 0);

        if(m==1){
            fill(0);
        } else {
            noFill();
        }
        for (Point p : dots) {
            vertex(p.x,p.y);
        }
        if(m==1){
            endShape(CLOSE);
        } else {
            endShape();
        }

}

void mouseClicked(){
    println("point(",mouseX,",",mouseY,");");
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

