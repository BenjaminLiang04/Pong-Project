//Utilities Tab

void tactileRect (int x, int y, int w, int h) {// Beginning of tactileRect
 if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
   stroke(255);
 } else {
   stroke(62);
 }
 }//                                              End of tactileRect
 
void reset() {//                                  Beginning of reset
  //Ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = 5;
  vy = 0;
  
  //Score
  leftscore = 0;
  rightscore = 0;
  timer = 100;
  
  //Paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
}//                                               End of reset
