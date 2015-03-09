class you { 
  float xPos;
  float yPos;
  float wide;
  float tall;
  int xVel = 4;

  you(float _wide, float _tall) {
    wide = _wide;
    tall = _tall;
    xPos = (width/2)-(wide/2); //Right in the middle
    //of the screen.
    yPos = height-tall-(tall/5); //At the very bottom (minus a bit).
  }

//Here's where we use either Arduino or keyboard commands.
//For Arduino, comment out the four if statements and use
//mappedValue for the xPos. For keyboard commands, comment
//out setting xPos equal to mappedValue and use the four
//if statements instead.
  void update() {
    if (goLeft == true) {
      xPos -= xVel;
    }
    if (goRight == true) {
      xPos += xVel;
    }
    if (xPos >= width-wide) {
      xPos = width-wide;
    }
    if (xPos <= 0) {
      xPos = 0;
    }
    //-->xPos = mappedValue;
  }

  void display() {
    noFill();
    rect(xPos, yPos, wide, tall);
    fill(255,0,0);
    textFont(font, 24);
    text(youHealth, xPos+(wide/2), height-(tall/2));
    //The above displays your health on the hero ship.
    noFill();
  }
}

