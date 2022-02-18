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
  public Tendril(int len, double theta, int x, int y)
  {
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments = len;
  }
  public void show()
  {
    float startX = myX;
    float startY = myY;
    for(int i = 0; i < myNumSegments; i++){
      myAngle = myAngle + (Math.random()*41-20)*0.01;
      float endX = startX + (float)Math.cos(myAngle)*SEG_LENGTH;
      float endY = startY + (float)Math.sin(myAngle)*SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
  }
}
