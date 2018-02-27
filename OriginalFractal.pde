public void setup()
{
  background(0);
  size(600, 600);
  noStroke();
  Fractal(30,0);
}
public void draw()
{

}
public void Fractal(int r, double t)
{
  int c=50;
  if (t>50*PI){
  fill(random(0,255),random(0,255),random(0,255),random(0,100));
    ellipse((int)(r*Math.cos(t)+r*t*Math.sin(t)+300), (int)(-r*Math.sin(t)+r*t*Math.cos(t)+300), (int)(c*t),(int)(c*t));}
  else
  {
   fill(random(0,255),random(0,255),random(0,255),random(0,100));
   ellipse((int)(r*Math.cos(t)+r*t*Math.sin(t)+300), (int)(-r*Math.sin(t)+r*t*Math.cos(t)+300), (int)(c*t),(int)(c*t));
   Fractal(r, t+PI/48);
  }
}