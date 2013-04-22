// Using Images in Processing
// Author: Josh Fishburn
//  -- Based on the example at: 
//     http://www.processing.org/learning/basics/loaddisplayimage.html
// Date: 2013-04-22
// Version: 0.1

PImage img;  // Declare variable "a" of type PImage

void setup() {
  size(640, 360);
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  img = loadImage("moonwalk.jpg");  // Load the image into the program  
}

void draw() {
  // Displays the image at its actual size at point (0,0)
  image(img, 0, 0);
  // Displays the image at point (0, height/2) at half of its size
  image(img, 0, height/2, img.width/2, img.height/2);
}
