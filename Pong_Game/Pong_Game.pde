//Pong Game
//Benjamin Liang
//1-4(B)
//Apr 6, 2021
//Programming 11

//Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Sound Effects
Minim minim;
AudioPlayer theme, coin, bump, gameover;

//Mode Framework
int mode;
final int INTRO      =1;
final int GAME       =2;
final int PAUSE      =3;
final int GAMEOVER   =4;

//Entity Variables
float leftx, lefty, leftd, rightx, righty, rightd; //Paddles
float ballx, bally, balld; //Ball
float vx, vy; //Velocity
float dright, dleft, br, rightr, leftr; //Collisions
boolean AI; //AI

//Keyboard Variables
boolean wkey, skey, upkey, downkey;

//Score Variables
int leftscore, rightscore, timer;

//Colour Pallette
color purple          = #1B0A2E;
color lightpurple     = #5504DF;
color blue            = #211337;
color lightblue       = #45FFAB;
color orange          = #EA552A;

//Fonts
PFont fontg;

void setup() {//                Beginning of Setup
  size(800,600);
  mode = INTRO;
  
  //Initalize Paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //Initialize Ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = 7;
  vy = 0;
  
  //Initialize Keyboard
  wkey = skey = upkey = downkey = false;
  
  //Score
  leftscore = 0;
  rightscore = 0;
  timer = 100;
 
  //Text
  textAlign(CENTER,CENTER);
  fontg = createFont("GROBOLD.ttf",150);
  
  //Minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin  = minim.loadFile("coin.wav");
  bump  = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  
}//                             End of Setup

void draw() {//                 Beginning of Draw
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error:" + mode);
  }

}//                             End of Draw
