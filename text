PFont font;
color purple=#ED03FF, white=#FFFFFF;
//
void textSetup() {
  //Fonts from OS
  String[] fontList = PFont.list(); //To list all fonts available on system
  printArray(fontList); //For listing all possible fonts to choose, then createFont
  //
  font = createFont ("Harrington", 55); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
} //End Text Setup
//
void textDraw( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight ) {
  fill( ink );
  textAlign ( alignX, alignY);
  float size = textCalculator(rectWidth, text) ; // //prints at 65
  println("4. ", textWidth(text), rectWidth, size);
  textFont(font, size); //Change the number until it fits, largest font size //prints at 65
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill( white ); //default
} //End Text Draw
//
float textCalculator( float rectWidth, String text) {
  float size = appWidth;
  textSize(size);
  println("1. ", textWidth(text), rectWidth, size);
  while ( textWidth (text) >= rectWidth ) {
    size = size * 0.99;
    textSize ( size );
  } //End WHILE
  textSize ( size );
  println("2. ", textWidth (text), rectWidth, size);
  size = textWidth (text);
  textSize ( size );
  println("3. ", textWidth (text), rectWidth, size);
  return size;
} //End Text Calcualtor
