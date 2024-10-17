  void setup()
	{
	    noLoop();
 size(1000,1000);
	}
	void draw()
	{
	    background(r,g,b);
  Total=0;
  for(int x=0; x<1000; x+=100){
    for(int y=0;y<800;y+=100) {
      Die bob = new Die(x,y);
      bob.show();
      Total+=bob.value;
}
	}
 textSize(100);
   text(("Total"+Total+"), 0, 950);
}
	void mousePressed()
	{
 setup();
  redraw();

	}
	class Die //models one single dice cube
	{
	    public int value;
  int myX,myY;
  int pos1=25;
  int pos2=50;
  int pos3=75;
  int r=(int)(Math.random()*256);
  int g=(int)(Math.random()*256);
  int b=(int)(Math.random()*256);

	    
	    Die(int x, int y) //constructor
	    {
	       roll();
    myX=x;
    myY=y;

	    }
	    void roll()
	    {
	        value = (int)((Math.random()*6)+1);

	    }
	    void show()
	    {
	        fill(r,g,b);
    rect(myX,myY,100,100);
    fill(0,0,0);
    if(value==1){
      ellipse(myX+pos2, myY+pos2,20,20);
    }else if(value==2){
      ellipse(myX+pos1, myY+pos1,20,20);
      ellipse(myX+pos3, myY+pos3,20,20);
    }else if(value==3){
      ellipse(myX+pos1, myY+pos1,20,20);
      ellipse(myX+pos2, myY+pos2,20,20);
      ellipse(myX+pos3, myY+pos3,20,20);
    }else if(value==4){
      ellipse(myX+pos1, myY+pos1,20,20);
      ellipse(myX+pos3, myY+pos1,20,20);
      ellipse(myX+pos1, myY+pos3,20,20);
       ellipse(myX+pos3, myY+pos3,20,20);
    }else if(value==5){
      ellipse(myX+pos2, myY+pos2,20,20);
      ellipse(myX+pos1, myY+pos1,20,20);
      ellipse(myX+pos3, myY+pos1,20,20);
       ellipse(myX+pos1, myY+pos3,20,20);
       ellipse(myX+pos3, myY+pos3,20,20);
    }else if(value==6){
      ellipse(myX+pos1, myY+pos1,20,20);
      ellipse(myX+pos3, myY+pos1,20,20);
      ellipse(myX+pos1, myY+pos3,20,20);
      ellipse(myX+pos3, myY+pos3,20,20);
      ellipse(myX+pos1, myY+pos2,20,20);
      ellipse(myX+pos3, myY+pos2,20,20);
      }
	    }
	}
