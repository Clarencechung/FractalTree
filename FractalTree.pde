private double fractionLength = .8;
private int smallestBranch = 5;
private double branchAngle = .2; 
public void setup()
{  
  size(640,480);   
  noLoop();
}

public void draw()
{  
  background(0);  
  // stroke(255,50,255);
  line(320,480,320,380);  
  drawBranches(320,380,100,3*Math.PI/2);
}

public void drawBranches(int x,int y, double branchLength, double angle)
{ 
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength * fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  
  if(branchLength > smallestBranch)
  {
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2);
  }
}

public void keyPressed(){
  if(key =='a')
  {
    branchAngle = branchAngle + 0.025;
    stroke(random(0,255),random(0,255),random(0,255));
    redraw();
  }
  if(key =='d')
  {
    branchAngle = branchAngle - 0.025;
    stroke(random(0,255),random(0,255),random(0,255));
    redraw();
  }
}




// private double fractionLength = .8; 
// private int smallestBranch = 10; 
// private double branchAngle = .2;  
// public void setup() 
// {   
// 	size(640,480);    
// 	noLoop(); 
// } 
// public void draw() 
// {   
// 	background(0);   
// 	stroke(0,255,0);   
// 	line(320,480,320,380);   
// 	drawBranches(320,380,100,3*Math.PI/2);  //will add later 
// } 
// public void drawBranches(int x,int y, double branchLength, double angle) 
// {   
// 	double angle1 = angle + branchAngle;
// 	double angle2 = angle - branchAngle;
// 	int endX1 = (int)(branchLength*Math.cos(angle) + x);
// 	int endY1 = (int)(branchLength*Math.sin(angle) + y);
// 	int endX2 = x;
// 	int endY2 = y;
// 	line(endX1,endY1,endX2,endY2);
// 	branchLength = branchLength * fractionLength;

// 	if (branchLength > smallestBranch)
// 		drawBranches(endX1,endY1,angle1,angle1);
// 		drawBranches(endX2,endY2,angle2,angle2);

// } 
