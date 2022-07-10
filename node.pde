class Node
{

  float x,y,prevX, prevY;
  String dir;
  color c;
  
  
  
  Node(float x, float y, String dir, color c)
  {
  
    this.x = x;
    this.y = y;
    this.dir = dir;
    this.prevX = x;
    this.prevY = y;
    this.c = c;
    
  
  }
  
  
  
void show()
{
  
strokeWeight(2);
stroke(100);
fill(c);
rect(this.x, this.y , scale, scale);
this.prevX = x;
this.prevY = y;
if(x > col*scale )
{
 x =- scale;
}
else if(x < 0) x = col*scale;
if(y > row*scale) y =- scale;
else if(y < 0) y = row*scale;

}


void update()
{

if(dir == "UP")
this.y-=scale;

else if(dir == "DOWN")
this.y += scale;

else if(dir == "LEFT")
this.x -= scale;

else if(dir == "RIGHT")
this.x += scale;
}
}
