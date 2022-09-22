// Class name
class MyShape
{
  // Data
  
  color baseColor;
  float x;
  float y;
  float size;
  
  float dirY = 1;
  
  
  // Constructor
  
  MyShape (color newBaseColor, float newX, float newY, float newSize)
  {
    baseColor = newBaseColor;
    x = newX;
    y = newY;
    size = newSize;
  }
  
  
  // Functions
  
  // Moves the shape to a specific coordinate
  void moveTo (float valX, float valY)
  {
    x = valX;
    y = valY;
  }
  
  // Moves the shape a specified quantity on both axes
  void move (float speedX, float speedY)
  {
    x += speedX;
    y += speedY;
  }
  
  // Moves the shape up and down at the boundaries of the canvas
  void moveBounceVertical (float speedY)
  {
    // Modify the y position by the specified amount
    y += (speedY * dirY);
    
    // If shape is above canvas, start moving down (+y)
    if (y < 0)
    {
      dirY = 1; 
    }
    
    // If shape is beow canvas, start moving up (-y)
    if (y > height)
    {
      dirY = -1;
    }
  }
  
  // Draws the shape on the canvas
  void display ()
  {
    fill(baseColor);
    circle(x,y,size/2.);
    rect(x-(size/3.),y,size/2.,size/3.);
    square(x,y+(size/3.),size/4.);
  }
  
  
}
