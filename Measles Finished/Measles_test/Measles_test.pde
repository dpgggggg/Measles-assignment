//Global Variables
int xCenter;
int yCenter;
int thack=50;
float xMeasle, yMeasle, measlesDiameter;
color resetWhite=#FFFFFF, red=#FF0000;// similar to int declaration
color backgroundColor;
Boolean nightMode=false;
int appWidth;
int appHeight;

//in void draw, all measle code in a if statement, condition of if statement is measle draw = true
//global variable measle=false
void setup() 
{
  //CANVAS will will be added to later
  size(1000,800); //Landscape
  //
  xCenter=width/2;
  yCenter=height/2;
  structure();
  measlePopulationSetup();
  ls();
  Image();
  Image1();
  //structure();
  
  
}//End setup
//
void draw() 
{
  buttons();
  measlesDraw();
  if (measlesDrawing == true) {imageDraw();}
  else {
    imageDraw2();
  }
 
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
  // For any button
  //if ( nightMode== false ) { //Nightmode Switch
    //nightMode = true;
 //} else {
   //nightMode = false;
  //} //End nightMode Switch
  if ( mouseX>=startButtonX && mouseX<=startButtonX+startButtonWidth && mouseY>=startButtonY && mouseY<=startButtonY+startButtonHeight) 
  { if(measlesDrawing==false) {
  measlesDrawing=true; 
} else { 
    measlesDrawing=false;
    noStroke();
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
}
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);}
    
    if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  
  
  //
  
 
  //
}//End mousePressed
//
//End MAIN Program
