class scumBullet {
  //We are going to use one bullet object over and over again.
  //This has the downside of only allowing one bullet on screen
  //at a time, but it means no need for arrays or multiple
  //object names. We start the bullet way offscreen and keep
  //it there until we need it.
  float xPos = 10000;
  float yPos = 10000;
  float wide = 10;
  float tall = 10;
  int yVel = 6;
  int interval = 25;

//The bullet need to come from the enemy ship, which changes
//position, and detect if it collides with the hero ship,
//which changes position. So we update the update function
//continuously with whatever the current position data are.
  void update(float _xPos, float _yPos, float you_xPos, float you_yPos) {

    if (yPos >= height+tall) { //If the bullet's position is past
    //the bottom of the screen plus a little
      if (scumAttack == true) { //If the enemy is still firing
        //Move the bullet back on screen to where it should appear
        //from the enemy ship:
        xPos = _xPos+(myAlienScum.wide/2)-(wide/2);
        yPos = _yPos+(tall*2);
      } 
      else { //Otherwise place it way off screen again:
        xPos = 10000;
        yPos = 10000;
      }
    }
    //If the bullet is onscreen
    else if (xPos >= 0 && xPos <= width) {
      if (yPos <= height+tall && yPos >= 0) {
        yPos += yVel; //Give it downward velocity.
      }
    }

//If the bullet collides with the hero ship
    if ((xPos+interval) >= you_xPos && (xPos-interval) <= you_xPos+meYou.wide) {
      if (yPos >= you_yPos && yPos <= you_yPos+meYou.tall) {
        youHealth--; //Subtract a point of health.
        if (scumAttack == true) { //If the enemy is still firing
          //Move the bullet back on screen to where it should appear
          //from the enemy ship:
          xPos = _xPos+(myAlienScum.wide/2)-(wide/2);
          yPos = _yPos+(tall*2);
        } 
        else { //Otherwise place it way off screen again:
          xPos = 10000;
          yPos = 10000;
        }
      }
    }
  }

  void display() {
    stroke(255, 0, 0);
    //Draw three bullets, just for the heck of it.
    //They're still all one object, but it looks cool.
    ellipse(xPos+interval, yPos, wide, tall);
    ellipse(xPos-interval, yPos, wide, tall);
    ellipse(xPos, yPos+interval, wide, tall);
    stroke(255);
  }
}

