MyShape shapeTest;
MyShape shapeLooper;
MyShape shapeBouncer;

int counter;

void setup ()
{
  size(800,800);
 
  // Assign new objects, using the constructor
  shapeTest = new MyShape(color(255,180,6),200,200,100);
  shapeLooper = new MyShape(color(20,180,200),400,400,150);
  shapeBouncer = new MyShape(color(255,26,72),600,400,125);
 
  counter = 0;
}

void draw ()
{
  background(255);
  
  // Iterate a counter up to 200
  counter++;
  if (counter > 200)
  {
    counter = 0;
  }
  
  // Call functions on our objects to move and display them
  
  // Move the object by a fixed amount every frame
  shapeTest.move(1.5, 0.6);
  shapeTest.display(); 
  
  // Move the object to a specific place every frame, leveraging the counter
  shapeLooper.moveTo(width/2,height/2 + counter);
  shapeLooper.display(); 
  
  // Move the object at a fixed speed, but determine direction based on internal logic
  shapeBouncer.moveBounceVertical(4.0);
  shapeBouncer.display();
  
}
