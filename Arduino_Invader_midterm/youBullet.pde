class youBullet {
  //This all works exactly the same way as with the scumBullet,
  //just in reverse - the bullet comes from the hero ship at the
  //bottom of the screen and moves upward whenever the player
  //is firing. Otherwise we store the bullet off screen. It does
  //damage to the enemy, etc. See the scumBullet tab for detailed notes.
  float xPos = -1000;
  float yPos = -1000;
  float wide = 10;
  float tall = 10;
  int yVel = -4;

  void update(float _xPos, float _yPos, float scum_xPos, float scum_yPos) {

    if (yPos <= -tall) {
      if (shoot == true) {
        xPos = _xPos+(meYou.wide/2)-(wide/2);
        yPos = _yPos-(tall*2);
      } 
      else {
        xPos = -1000;
        yPos = -1000;
      }
    }
    else if (xPos >= 0 && xPos <= width) {
      if (yPos >= -tall && yPos <= height) {
        yPos += yVel;
      }
    }

    if (xPos >= scum_xPos && xPos <= scum_xPos+myAlienScum.wide) {
      if (yPos >= scum_yPos && yPos <= scum_yPos+myAlienScum.tall) {
        scumHealth--;
        if (shoot == true) {
          xPos = _xPos+(meYou.wide/2)-(wide/2);
          yPos = _yPos-(tall*2);
        } 
        else {
          xPos = -1000;
          yPos = -1000;
        }
      }
    }
  }

  void display() {
    stroke(0, 255, 0);
    rect(xPos, yPos, wide, tall);
    stroke(255);
  }
}

