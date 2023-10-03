/* Program Notes: Geometry is portrait (smaller width)
 Demonstrates num pad as Nested FOR Loops
 Start wtih width, then error check height
 */
//
//Global Variables
int appWidth, appHeight; //CAUTION: decimals are truncated in ints, not floats or doubles
float widthSquare, heightSquare;
int numPadColumns = 3;
float[] x = new float [numPadColumns];
int numPadRows = 5;
float[] y = new float [numPadRows];
//
void setup() {
  size (400, 780);
  appWidth = width;
  appHeight = height;
  //
  //Population of rect() variables
  widthSquare = appWidth*0.99/4;
  heightSquare = widthSquare*3.9/4;
  //Error with PrintArray, FIX
  for ( int i=0; i<numPadColumns; i++ ) { // i stops for x not 
    x[i] = widthSquare*(2*i+1)/1.9;
    println("Inside x", x[i] );
  } //End FOR
  for ( int i=0; i<numPadRows; i++ ) {
    y[i] = widthSquare*(2.97*i+5)/2.6;
    println("Inside y", y[i]);
  } // End FOR
  //
  //if(i<numPadColumns)
  //
  printArray(x);
  printArray(y);
  /*
  x0 = widthSquare*1/2;
   x1 = widthSquare*3/2;
   x2 = widthSquare*5/2;
   y0 = widthSquare*5/2;
   y1 = widthSquare*7/2;
   y2 = widthSquare*9/2;
   y3 = widthSquare*11/2;
   y4 = widthSquare*14/2;
   */
  //Nested FOR, reading rect() arrays
  //
} //End setup
//
void draw() {
  for ( int i=0; i<numPadColumns; i++ ) {
    for ( int j=0; j<numPadRows-1; j++ ) {
      rect(x[i], y[j], widthSquare, heightSquare);
    } //End FOR
  } //End FOR
  /*
  rect(x0, y0, widthSquare, heightSquare);
   rect(x0, y1, widthSquare, heightSquare);
   rect(x0, y2, widthSquare, heightSquare);
   rect(x0, y3, widthSquare, heightSquare);
   rect(x1, y0, widthSquare, heightSquare);
   rect(x1, y1, widthSquare, heightSquare);
   rect(x1, y2, widthSquare, heightSquare);
   rect(x1, y3, widthSquare, heightSquare);
   rect(x2, y0, widthSquare, heightSquare);
   rect(x2, y1, widthSquare, heightSquare);
   rect(x2, y2, widthSquare, heightSquare);
   rect(x2, y3, widthSquare, heightSquare);
   */
} //End draw
//
void mousePressed() {
  //
  // Creating Number Pad Buttons
  // Basic IF key variables: mouseX> && mouseX< && mouseY> && mouseY<
  // First rect variables: x0, y0, widthSquare, heightSquare
  // if ( mouseX>x0 && mouseX<x0+widthSquare && mouseY>y0 && mouseY<y0+widthSquare ) println("1");
  // CAUTION: finish mousePressing when arrays can be read
  //
  for (int i=0; i<1 ; i++) {
    if ( mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[i] && mouseY<y[i]+widthSquare ) println("Button #:", i+1);
  } // End FOR
  // CAUTION: fix for rest of buttons
  // Hint: construct all the single line IFs
  //
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program
