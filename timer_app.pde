//Global Variables
int appWidth, appHeight;
Boolean windowActivated = false;
//
void setup () {
  size(500, 600);
  //fullScreen(); //displayWidth, displayHeight
  //OPTION: use displayWidth & height instead
  appWidth = width;
  appHeight = height;
  println("Display Width", displayWidth, "Display Height", displayHeight);
  println("App Width", appWidth, "App Height", appHeight);
  //
  //Problem: Display < CANVAS
  if (appWidth>displayWidth) appWidth=displayWidth;
  if (appHeight>displayHeight) appHeight=displayHeight;
  println(appWidth, appHeight);
  //Note: arithmetic will be solved but not the CANVAS size()
  //Solution: requires different function, note size(), i.e. fullScreen()
  //
} //End Setup
//
void draw() {
  if ( windowActivated == true ) splashScreen();
} //End draw
//
void mousePressed() {
  //fist mouse click, activates WINDOW
  windowActivated = true;
} //End mousePressed
//
void keyPressed( ) {
}  //End keyPressed
//
//End MAIN Program
