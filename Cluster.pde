public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster

  public Cluster(int len, int x, int y, int season)
  {
    //Generates random angle: Math.random()*(2*Math.PI)
    for(int i = 0; i < NUM_STEMS; i++){
      Tendril t = new Tendril(len,-1*Math.PI*(i/7.0),x,y,season);
      t.show();
    }
  }
}
