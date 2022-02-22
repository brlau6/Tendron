class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY, mySeason;
  private double myAngle;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y, int season)
  {
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments = len;
    mySeason = season;
    //myColor = thisColor;
  }
  public void show()
  {
    if (myNumSegments > 20) {
      strokeWeight(4);
      stroke(89, 61, 31);
    } else if (myNumSegments > 7) {
      strokeWeight(3);
      stroke(89, 61, 31);
    } else { //leaf flower color
      strokeWeight(2);
      if(mySeason == 0){
        stroke((float)Math.random()*150+100,(float)Math.random()*150,(float)Math.random()*50); //red
      } else if(mySeason == 1){
        stroke((float)Math.random()*100,175,(float)Math.random()*100); //green
      } else if (mySeason == 2){
        stroke(250,(float)Math.random()*150+50,255); //pink
      } else {
        stroke(255,255,255); //white
      }
      //stroke(243, 139, 252); //solid pink
    }
    float startX = myX;
    float startY = myY;
    for (int i = 0; i < myNumSegments; i++) {
      myAngle = myAngle + (Math.random()*41-20)*0.01;
      //myAngle = myAngle + (Math.random()*21-10)*0.01;
      float endX = startX + (float)Math.cos(myAngle)*SEG_LENGTH;
      float endY = startY + (float)Math.sin(myAngle)*SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if (myNumSegments >= 5) {
      Cluster c = new Cluster(myNumSegments/2, (int)startX, (int)startY, mySeason);
    }
  }//end show()
}
