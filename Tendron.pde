public void setup()
{
  size(500, 500);
  noLoop();
}
int season = 0;//starts season at spring
public void draw()
{
  background(84, 198, 255);
  noStroke();
  fill(107, 181, 98);
  rect(0, 400, 500, 100);//grass
  fill(255, 210, 87);
  ellipse(420, 80, 50, 50);//sun
  
  //initial number of segments in the tendril and starting (x,y) coordinate
  Cluster a = new Cluster(40, 250, 420, season); //middle
  Cluster b = new Cluster(20, 100, 450, season); //left
  Cluster c = new Cluster(20, 400, 450, season); //right
}
public void mousePressed()
{
  redraw();
}
public void keyPressed() { //when space pressed, change season
  if (key == ' ') {
    if (season == 0) { //spring
      redraw();
      season++;
    } else if (season == 1) { //summer
      redraw();
      season++;
    } else if (season == 2) { //fall
      redraw();
      season++;
    } else { //winter
      redraw();
      season = 0; //restarts seasons
    }
  }
}
