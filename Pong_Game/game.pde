//Game Tab

void game() {//           Beginning of game
  background (purple);
  
  //Draw Paddles
  stroke(orange);
  fill(orange);
  circle(leftx, lefty, leftd);
  stroke(lightblue);
  fill(lightblue);
  circle(rightx, righty, rightd);
  
   //Center Line
  stroke(255,255,255);
  fill(255,255,255);
  rect(397,0,6,600);
  
  //Ball
  stroke(255,255,255);
  fill(255,255,255);
  circle(ballx, bally, balld);
  
  //Scoreboard
  textSize(50);
  fill(orange);
  text(leftscore,200,80);
  fill(lightblue);
  text(rightscore,600,80);
  timer = timer - 1;
  
    //Ball Moving
    if (timer < 0) {
  ballx = ballx + vx;
  bally = bally + vy;
    }
    
  //Move Paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  
  if (AI == false) {
  if (upkey == true) righty = righty -5;
  if (downkey == true) righty = righty + 5;
  } else {
    if (bally > righty && ballx > 400) {
    righty = righty + 5;
    }
    if (bally < righty && ballx > 400) {
    righty = righty - 5;
    }
  }  
    
  //Paddle restrictions
  if(lefty < 100) {
    lefty = 100;
  }
  if(lefty > 500) {
    lefty = 500;
  }
  if(righty < 100) {
    righty = 100;
  }
  if(righty > 500) {
    righty = 500;
  }
  
  //Ball Restrictions
  if (bally < br || bally > height-br) {
    vy = vy * -1;
}
  
  if (bally < 50) {
    bally = 50;
  }
  
  if (bally > 550) {
    bally = 550;
  }

  //Scoring
  if (ballx < 0) {
   coin.rewind();
   coin.play();
   rightscore++; 
   ballx = width/2;
   bally = height/2;
   vx = 7;
   vy = 0;
   timer = 100;
  }
  
  if (ballx > 800) {
   coin.rewind();
   coin.play();
   leftscore++;
   ballx = width/2;
   bally = height/2;
   vx = 7;
   vy = 0;
   timer = 100;
  }
  
  if (leftscore >= 3) {
    mode = GAMEOVER;
  } else if (rightscore >= 3) {
    mode = GAMEOVER;
  }
  
  //Collisions
  dright = dist(ballx,bally,rightx,righty);
  dleft = dist(ballx,bally,leftx,lefty);
  br = balld/2;
  rightr = rightd/2;
  leftr = leftd/2;
  
  if (dright <= br + rightr) {
    vx = (ballx - rightx)/15;
    bump.rewind();
    bump.play();
  }
  
  if (dleft <= br + leftr) {
    vx = (ballx - leftx)/15;
    bump.rewind();
    bump.play();
  }
  
  if (dright <= br + rightr) {
    vy = (bally - righty)/15;
    bump.rewind();
    bump.play();
  }
  
  if (dleft <= br + leftr) {
    vy = (bally - lefty)/15;
    bump.rewind();
    bump.play();
  }
  
}//                       End of game

void gameClicks() {//     Beginning of gameClicks
  mode = PAUSE;
}//                       End of gameClicks
