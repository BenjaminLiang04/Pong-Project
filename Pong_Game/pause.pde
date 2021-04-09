//Pause Tab

void pause() {//          Beginning of pause
  background(purple);
  fill(lightpurple);
  textSize(150);
  text("PAUSED",400,300);
  theme.pause();
}//                       End of pause

void pauseClicks() {//    Beginning of pauseClicks
  mode = GAME;
  theme.play();
}//                       End of pauseClicks
