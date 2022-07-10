class Apple
{
float x,y;
color c;

Apple()
{

this.c = color(225,0,0);
this.apple();

}


void show()
{
  
fill(c);
rect(this.x,this.y,scale,scale);

}


void apple()
{

this.x = (floor(random(row))*scale);
this.y = (floor(random(col))*scale);

}
}
