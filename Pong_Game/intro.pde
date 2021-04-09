//Intro Tab

void intro() {//          Beginning of intro
  background(purple);
  gameover.pause();
  theme.play();
  
  //Title
  fill(orange);
  textSize(150);
  textFont(fontg);
  text("PONG",400,150);
  
  
  //1 Player Buttons
  stroke(62);
  tactileRect(75,400,250,100);
  strokeWeight(3);
  fill(lightblue);
  rect(75,400,250,100);
  fill(blue);
  textSize(35);
  text("1 PLAYER",200,450);

  //2 Player Button
  stroke(62);
  tactileRect(475,400,250,100);
  fill(lightblue);
  rect(475,400,250,100);
  fill(blue);
  textSize(35);
  text("2 PLAYER",600,450);
  
}//                       End of intro

void introClicks() {//    Beginning of introClicks
  //1 Player button
  if(mouseX > 75 && mouseX < 325 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
    AI = true;
  }
  //2 Player button
  if(mouseX > 475 && mouseX < 725 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
    AI = false;
  }


}//                       End of introClicks
