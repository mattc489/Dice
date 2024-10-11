void setup()
{
  size(500, 300);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw()
{
  {\
    for( int x = 10; x < 450; x = x+60){
    Die bob = new Die(50,50);
    bob.show();
}
    }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  boolean one;
  boolean two;
  boolean three;
  boolean four;
  boolean five;
  boolean six;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
    if( Math.random() < .166){
      one = true;
    }
    else if( Math.random() < 0.333 && Math.random() > 0.166){
      two = true;
    } 
    else if( Math.random() < 0.5 && Math.random() > 0.166 && Math.random() > 0.33){
     three = true;
    }
     else if( Math.random() < 0.666 && Math.random() > 0.166 && Math.random() > 0.33 && Math.random () > 0.5) {
     four = true;
    }
    else if( Math.random() < 0.833 && Math.random() > 0.166 && Math.random() > 0.666 && Math.random () > 0.5) {
     five = true;
    }
    else
    six = true;
    
  }
  void show()
  {
    //your code here
    noStroke();
    fill (255);
    rect( myX, myY,50,50);
    fill(0);
    if( one == true){
     ellipse( myX + 25, myY + 25, 10,10);
    }
    else if( two == true){
    ellipse( myX+10, myY + 10, 10,10);
    ellipse( myX + 40, myY + 40, 10,10);
    }
else if ( three == true){
     ellipse( myX+10, myY + 40, 10,10);
     ellipse( myX + 40, myY + 10, 10,10);
     ellipse ( myX + 25, myY + 25, 10, 10);
    }
 else if( four == true){
    ellipse( myX+10, myY + 10, 10,10);
    ellipse( myX +40, myY + 40, 10,10);
    ellipse( myX+40, myY + 10, 10,10);
    ellipse( myX+10, myY + 40, 10,10);
    }
 else if( five == true){
    ellipse( myX+10, myY + 10, 10,10);
    ellipse( myX + 40, myY + 40, 10,10);
    ellipse( myX+40, myY + 10, 10,10);
    ellipse( myX+10, myY + 40, 10,10);
    ellipse( myX + 25, myY + 25, 10,10);
    }
   else if( six == true){
    ellipse( myX+10, myY + 10, 10,10);
    ellipse( myX + 40, myY + 40, 10,10);
    ellipse( myX+40, myY + 10, 10,10);
    ellipse( myX+10, myY + 40, 10,10);
    ellipse( myX + 10, myY + 25, 10,10);
    ellipse( myX + 40, myY + 25, 10,10);
    }

}
}
