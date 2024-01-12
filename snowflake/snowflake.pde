float x, y;
float rad = 5;
float dizziness = 5;



void setup()  {
  
  size(600, 600);
  background(0);
  
  noStroke();
  fill(255, 80);
  ellipse(width/2, height/2, rad, rad);
  
}



void draw()  {
  
  x = 0;
  y = height/2;  
  
  while ( red(get(round(x), round(y))) == 0 )  {
    x = x + random(-dizziness/4, dizziness);
    y = y + random(-dizziness, dizziness);
    
    if (x > width/2)  {
      x = 0;
      y = height / 2;
    }
  }
  
  if (x < rad)  {
    noLoop();
    saveFrame();
  }

  noStroke();
  draw_snowflake();

}



void draw_snowflake()  {
  
  translate(width/2, height/2);
  x = x - width/2;
  y = y - height/2;
  
  for(int i=0; i<6; i++)  {
    ellipse(x, y, rad, rad);
    rotate(PI/3);
  }

  y = -y;
  
  for(int i=0; i<6; i++)  {
    ellipse(x, y, rad, rad);
    rotate(PI/3);
  }
  
}
