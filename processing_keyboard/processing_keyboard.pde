/* Fluid keyboard controls example by Alex Glukhov (2015)
**
** This example shows how to implement working keyboard
** controls in Processing. Using the default Processing 
** method can result in keystrokes not being registered
** especially when trying to press two or more keys at
** the same time. This workaround tried to circumvent 
** these problems.
**
** Feel free to modify and distribute!
*/

// booleans for keypresses to allow multiple keys to be pressed at once
boolean isUpPressed = false;
boolean isDownPressed = false;
boolean isLeftPressed = false;
boolean isRightPressed = false;
boolean isSpacePressed = false;

// circle positions
int x,y;

// circle fill color
color fillColor;

void setup() {
  size(640,480);
  x = width/2;
  y = height/2;
  fillColor = color(100);
}

void draw() {
  background(255);
  
  // move around if arrow keys are pressed
  if (isRightPressed) x++;
  if (isLeftPressed)  x--;
  if (isUpPressed)    y--;
  if (isDownPressed)  y++;
  
  // switch colors when space is pressed
  if (isSpacePressed)
      fillColor = color(random(255),random(255),random(255));
  
  // draw a circle on screen
  ellipseMode(CENTER);
  fill(fillColor);
  ellipse(x,y,20,20);
}

// capture key press events
void keyPressed() {
  if (keyCode == RIGHT) isRightPressed = true;
  if (keyCode == LEFT) isLeftPressed = true;
  if (keyCode == UP) isUpPressed = true;
  if (keyCode == DOWN) isDownPressed = true;
  if (keyCode == 32) isSpacePressed = true;
}

// capture key release events
void keyReleased() {
  if (keyCode == RIGHT) isRightPressed = false;
  if (keyCode == LEFT) isLeftPressed = false;
  if (keyCode == UP) isUpPressed = false;
  if (keyCode == DOWN) isDownPressed = false;
  if (keyCode == 32) isSpacePressed = false;
}
