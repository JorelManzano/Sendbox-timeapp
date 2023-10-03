float widthSquare, heightSquare;
int numPadColumns = 3;
float[] x = new float [numPadColumns];
int numPadRows = 5;
float[] y = new float [numPadRows];
float border=0.0;
//
// Method for Writing X&Y Array Variables
float writeCoordinate (int i, int oddStart) {
  return border + ( widthSquare*(2*i+oddStart)/2 );
} //End writeCoordiante
//
void population() {
  // Simple Width Algorithm for number pad
  widthSquare = appWidth*1/4;
  heightSquare = widthSquare;
  //
  // Height Error Check
  if ( widthSquare*8 <= appHeight ) {
    println("true");
    // Empty IF
  } else {
    println("false");
    widthSquare = heightSquare = appHeight*1/8;
    border = appWidth - ( widthSquare*1/2 + widthSquare*3 + widthSquare*1/2 );
    border = border*1/2; // using one variable saves system resources
  } //End Height Error Check
  //
  // Writing X&Y rect() Array Variables
  for ( int i=0; i<numPadRows; i++ ) {
    if ( i<numPadColumns ) x[i] = writeCoordinate(i, 1);
    y[i] = writeCoordinate(i, 5);
  } // End FOR
  //printArray(x);
  //printArray(y);
  //
} //End Population
