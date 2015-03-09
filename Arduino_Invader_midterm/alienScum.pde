class alienScum {
  float xPos;
  float yPos;
  float wide;
  float tall;
  int xVel = 4;

  alienScum(float _wide, float _tall) {
    wide = _wide;
    tall = _tall;
    xPos = (width/2)-(wide/2); //Right in the middle
    //of the screen.
    yPos = 0 + (tall/5); //At the very top (plus a bit).
  }

  void update() {
    xPos += xVel; //Move horizontally.
    if (xPos < 0 || xPos+wide >= width) { //If there's a wall
      xVel *= -1; //Reverse direction.
    }
  }

  void display() {
    noFill();
    ellipseMode(CORNER);
    ellipse(xPos, yPos, wide, tall);
    fill(0,255,0);
    textFont(font, 24);
    text(scumHealth, xPos+(wide/2), tall);
    //The above displays the enemey health on the enemy.
    noFill();
  }

}
