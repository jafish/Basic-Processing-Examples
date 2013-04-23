// Using Images in Processing
// Author: Josh Fishburn
//  -- Based on the example at: 
//     http://www.processing.org/learning/basics/loaddisplayimage.html
// Date: 2013-04-22
// Version: 0.1

PImage img;  // Declare variable "img" of type PImage

void setup() {
  size(100, 100);
  // The image file must be in the data folder of the current sketch 
  // to load successfully. There are two ways to accomplish this:
  //   1. In your sketch folder, create a folder named "data" (lowercase is important!) and
  //    put your image file in it.
  //   2. Drag the image file into the sketch window (at the bottom of the window, it should
  //    say "One file added to the sketch"
  img = loadImage("walk1.gif");  // Load the image into the program  
}

void draw() {
  // Displays the image at its actual size at point (0,0)
  image(img, 0, 0);
  // Displays the image at point (width/4, height/4) at four times its size
  image(img, width/4, height/4, img.width*4, img.height*4);
}
