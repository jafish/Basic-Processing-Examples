// Using Images to Create Animation in Processing
// Author: Josh Fishburn
//  -- Based on the example at: 
//     http://www.processing.org/learning/basics/loaddisplayimage.html
// Date: 2013-04-22
// Version: 0.1

PImage[] waddle; // Create an array to hold all images in the animation
int waddleLength;
int currentFrame;
int animDelay;

void setup() {
  size(640, 480);
  
  // Give all my global variables (those created above the setup function) proper initial values
  waddleLength = 12;
  currentFrame = 0;
  animDelay = 10; //The higher this number, the slower the animation
  
  // Allocate the amount of space I need (the number of frames in the animation)
  waddle = new PImage[waddleLength];

  // I still need to put the images into the array. I'm able to do the following
  //   because I named the files very specifically (walk1.gif, walk2.gif, and so on). 
  //   I encourage you to do the same.
  // Also, I used a program called Pixen to make the animation, but you can use any program
  //   that creates image files.
  for (int i = 0; i < waddle.length; i++) {
    // In loadImage, I'm putting together a different name each time, based on the value of the i variable
    //   i starts at 0, then becomes 1, then 2, and so on, until it reaches 16.
    // Just as before, these files must be in the sketch's data folder
    waddle[i] = loadImage("walk" + i + ".gif");
  }
}

void draw() {
  background(0);
  // The setup is fairly complex, but now all we need to do to "play" the animation is
  //  to display the right image at the right time. So, what's the right time?
  //  I'll start by assuming that we want to advance the animation with every frame, which is
  //  easy to do because every time the draw function runs there's a new frame.
  //  We can use frameCount and the modulus operator to figure out which frame we should be on.

  //PImage tempImage = waddle[frameCount %  waddleLength];
  //image(tempImage, width/2, height/2, tempImage.width*4, tempImage.height*4);

  // If you find that the animation is happening too quickly, you can slow it down by 
  //  only checking every other frame. But then I can't rely on frameCount to animate.
  //  I'll create my own counter.

  if (frameCount % animDelay == 0) { // If the remainder when I divide frameCount by animDelay is zero
    //  In other words, if frameCount is a multiple of animDelay
    //  Tweak the value of animDelay in setup() to see its effect
    currentFrame++;
  }
  //Always draw it, but only change the frame every x number of frames
  PImage tempImage = waddle[currentFrame % 12];
  image(tempImage, width/2, height/2, tempImage.width*4, tempImage.height*4);
}

