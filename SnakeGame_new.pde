Snake snake;
Apple apple;
int scale;
int col = 40;
int row = 40;
int score = 0;

void keyPressed()
{

if(keyCode == UP && snake.head.dir != "DOWN") snake.changeDir("UP");
if(keyCode == DOWN && snake.head.dir != "UP") snake.changeDir("DOWN");
if(keyCode == LEFT && snake.head.dir != "RIGHT") snake.changeDir("LEFT");
if(keyCode == RIGHT && snake.head.dir != "LEFT") snake.changeDir("RIGHT");


}


void setup()
{
  
size(800,800);
scale = width/col;
frameRate(8);
apple = new Apple();
snake = new Snake(col/2*scale , row/2*scale);

}

void draw()
{
background(100);
textSize(20);
fill(255);
text("SCORE: " + score , 10 , 20);
snake.show();
apple.show();
if(snake.head.x == apple.x && snake.head.y == apple.y)
{ 
  apple.apple();
  snake.addNode();
  score ++;
}

if(snake.collides())
{
  
noLoop();

}

}
