class Snake
{

ArrayList <Node> nodes = new ArrayList <Node>();
Node head;
int nodescount;

Snake(float x , float y)
{

head = new Node(x,y,"UP",color(0)); 
this.nodescount = 0;

}

void changeDir(String dir)
{
  
head.dir = dir;
  

}

void show()
{

head.show();
head.update();
for(int i = 0; i < nodes.size() ; i++)
{
 Node n  = nodes.get(i);
 n.show();
 if(i == 0)
 {
  n.x = head.prevX;
  n.y = head.prevY;
 }
 else
 {
 n.x = nodes.get(i - 1).prevX;
 n.y = nodes.get(i - 1).prevY;
 }
}
}

void addNode()
{
if(this.nodescount == 0) 
{
 nodes.add(new Node(head.prevX,head.prevY,"",color(0,200,0)));
}
else
{
Node lastNode = nodes.get(this.nodescount - 1);
nodes.add(new Node(lastNode.prevX , lastNode.prevY , "" ,color(0,200,0)));
}
this.nodescount ++ ;
}

boolean collides()
{
for(Node n : nodes)
{

  if(head.x == n.x && head.y == n.y) return true;
  
}
return false;

}

}
