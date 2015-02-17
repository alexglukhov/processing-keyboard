# processing-keyboard
A basic example of fluid keyboard controls for Processing.

This example shows how to implement working keyboard
controls in Processing. Using the default Processing 
method can result in keystrokes not being registered
especially when trying to press two or more keys at
the same time. This workaround tries to circumvent 
these problems.


But how do I add more keys?
---------------------------

Adding additional keys is easy.

Before you add any code, you'll need to look up your desired
key's ASCII key code. In our example, we'll be using the
Control key - its key code is 90.


First, create a boolean associated to your key before the
 setup() function. Set it to false by default.

boolean isControlPressed = false;


Second, add the if statement to set the boolean to true
when the key is pressed, in the keyPressed() function.

if (keyCode == 90) isControlPressed = true;


Third, add its counterpart to the keyReleased() function,
for when the key is released.

if (keyCode == 90) isControlPressed = false;

You're done!


Now all you have to do is check if the corresponding boolean
is true oin draw() and do anything you want!

if(isControlPressed) produceBacon();
