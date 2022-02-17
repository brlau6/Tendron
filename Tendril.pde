class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
 
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int segments, double theta, int x, int y)
  {
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments = segments;
  }
  public void show()
  {
    int startX = myX;
    int startY = myY;
    for(int i = 0; i < myNumSegments; i++){
      myAngle = (Math.random()*40-20)*0.1;
      double endX = startX + Math.cos(myAngle + SEG_LENGTH);
    }
  }
}
