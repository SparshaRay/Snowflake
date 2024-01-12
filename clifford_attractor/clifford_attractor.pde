float a=-1.8, b=-2.0, c=-0.5, d=-0.9;
float x=0, y=0, prevX=0, prevY=0, t=0.0;
float fac = 750;

void setup() {
  size(1000, 1000);
  background(0);
  strokeWeight(1.5);
  frameRate(60);
}

void draw() {
  
  noStroke();
  fill(0, 20);
  rect(0, 0, width, height);
  
  translate(width/2, height/2);
  
  t = 2.0 + millis()/20000.0;
  prevX = random(2) - 1.0;
  prevY = random(2) - 1.0;

  for (int i=0; i<7500; i++) {
    
    //x =  sin(a * prevY + t) + c * cos(a * prevX + t) * sin(b * prevX + t);
    //y =  sin(b * prevX + t) + d * cos(b * prevY + t) * sin(a * prevY + t);
    
    x =  sin(a * prevY + t)*cos(a * prevX + t) + c * cos(a * prevX + t) * sin(b * prevX + t);
    y =  sin(b * prevX + t)*cos(b * prevY + t) + d * cos(b * prevY + t) * sin(a * prevY + t);
    
    stroke(255*noise(t*200.0),  fac * abs(prevX-x),  fac * abs(prevY-y), 50);
    point((width/5.0) * x, (height/5.0) * y);
    
    prevX = x;
    prevY = y;
  }
  
}
