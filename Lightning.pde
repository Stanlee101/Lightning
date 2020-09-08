int startX = 0;
int middleX = 0;
int lastX = 0;

void setup()
{
  size(300, 300);
  background(33, 32, 138);
  frameRate(5);
  noLoop();
}

void draw()
{
  fill(33, 32, 138);           //cover thingy
  rect(0, 0, 300, 300);
  stroke(250);                 //human subject
  fill(250);
  ellipse(150, 230, 25, 25);
  strokeWeight(5);
  line(150, 230, 150, 270);    //body
  line(135, 255, 165, 255);    //arm
  line(135, 290, 150, 270);    //legs
  line(165, 290, 150, 270);
  noStroke();
  fill(0);
  ellipse(145, 225, 7, 7);    //face
  ellipse(155, 225, 7, 7);
  arc(150, 239, 15, 10, 91.3, 94.4); //sad face
  

  stroke(209, 203, 36);   //"lightning"
  strokeWeight(4);
  startX = ((int)(Math.random()*190)+60);
  middleX = startX + ((int)(Math.random()*100 -40));
  lastX = middleX + ((int)(Math.random()*100 -50));
  line(startX, 10, middleX, 120);
  line(middleX, 120, lastX, 160);
  line(lastX, 160, 150, 220);
  
  fill(69, 75, 92);               //clouds
  noStroke();
  ellipse(40, 30, 100, 80);
  ellipse(120, 30, 100, 90);
  ellipse(180, 30, 100, 60);
  ellipse(260, 30, 120, 100);
}

void mousePressed()
{
  redraw();
}
