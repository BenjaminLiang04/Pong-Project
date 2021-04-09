//Gameover Tab

void gameover() {//         Beginning of gameover
  background (purple);
  theme.pause();
  gameover.play();
  
  if (leftscore > rightscore) {
    fill(orange);
    textSize(100);
    text("GAMEOVER",400,200);
    textSize(50);
    text("PLAYER 1 WINS",400,400);
  } else {
    fill(lightblue);
    textSize(100);
    text("GAMEOVER",400,200);
    textSize(50);
    text("PLAYER 2 WINS",400,400);
  }
  
 
}//                         End of gameover

void gameoverClicks(){//    Beginning of gameoverClicks
  mode = INTRO;
  theme.rewind();
  reset();
}//                         End of gameoverClicks
