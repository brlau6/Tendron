public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        Tendril a = new Tendril(len, (Math.random()*(2*Math.PI)),x, y);
        Tendril b = new Tendril(len, (Math.random()*(2*Math.PI)),x, y);
        Tendril c = new Tendril(len, (Math.random()*(2*Math.PI)),x, y);
        Tendril d = new Tendril(len, (Math.random()*(2*Math.PI)),x, y);
        Tendril e = new Tendril(len, (Math.random()*(2*Math.PI)),x, y);
        Tendril f = new Tendril(len, (Math.random()*(2*Math.PI)),x, y);
        Tendril g = new Tendril(len, (Math.random()*(2*Math.PI)),x, y);
        
        a.show();
        a.show();
        a.show();
        a.show();
        a.show();
        a.show();
        a.show();
    }
}
