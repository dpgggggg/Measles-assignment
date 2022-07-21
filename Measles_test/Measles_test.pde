//Global Variables
int xCenter = width/2;
int yCenter = height/2;
int thack=50;
float xMeasle, yMeasle, measlesDiameter;
color resetWhite=#FFFFFF, red=#FF0000;// similar to int declaration
color backgroundColor;
Boolean nightMode=false;

//in void draw, all measle code in a if statement, condition of if statement is measle draw = true
//global variable measle=false
void setup() 
{
  //CANVAS will will be added to later
  size(800,600); //Landscape
  //
  structure();
  measlePopulationSetup();
  //structure();
  
  
}//End setup
//
void draw() 
{
  measlesDraw();
  //rect(startButtonX,startButtonY,startButtonWidth,startButtonHeight);
  
}//End draw
//
void keyPressed() {
  if (keyPressed) {}
}//End keyPressed
//
void mousePressed() {
  //Technically, there are 4 ways to code a mouse button press
  //
  if ( mouseButton == LEFT ) {
    //Night Mode TRUE
 backgroundColor = color( random(255), random(255), random(255) ) ; 
    background( backgroundColor );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Left Mouse Button
  if( mouseButton == RIGHT ) {
  backgroundColor = color( random(255), random(255), 0 );
    background( backgroundColor );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Right Mouse BUtton
  //if ( mouseButton == WHEEL ) {}//End Mouse WHEEL
  /* For any button
  if ( nightMode== false ) { //Nightmode Switch
    nightMode = true;
 } else {
   nightMode = false;
  } //End nightMode Switch
  
  //
  color backgroundColor = ( nightMode==true ) ? color(random(255), random(255), random(0)): color(random(255), random(255), random(255));
  background( backgroundColor );
  */
  //
}//End mousePressed
//
//End MAIN Program
