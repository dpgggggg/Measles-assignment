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
  if (nightMode==true) {
     backgroundColor = color( random(255), random(255), 0 ) ; 
    background( backgroundColor );
   ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  } else {
   backgroundColor = color( random(255), random(255), 0 );
    background( backgroundColor );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }
  //structure();
  
  
}//End setup
//
void draw() 
{
   buttons1();
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
  //if ( mouseButton == LEFT ) { if (nightMode==false) {
  //nightMode=true;backgroundColor = color( random(255), random(255), 0 ) ; 
    //background( backgroundColor );
    //ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);} else {nightMode=false;backgroundColor = color( random(255), random(255), 0 );
    //background( backgroundColor );
    //ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);}
    //Night Mode TRUE
// backgroundColor = color( random(255), random(255), random(255) ) ; 
    //background( backgroundColor );
    //ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //End Left Mouse Button
  //if( mouseButton == RIGHT ) {
  //backgroundColor = color( random(255), random(255), 0 );
    //background( backgroundColor );
    //ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //}//End Right Mouse BUtton
  //if ( mouseButton == WHEEL ) {}//End Mouse WHEEL
  // For any button
  //if ( nightMode== false ) { //Nightmode Switch
    //nightMode = true;
 //} else {
   //nightMode = false;
  //} //End nightMode Switch
  //Buttons
  if ( mouseX>=startButtonX && mouseX<=startButtonX+startButtonWidth && mouseY>=startButtonY && mouseY<=startButtonY+startButtonHeight) 
  { if(measlesDrawing==false) {
  measlesDrawing=true; 
} else { 
    measlesDrawing=false;
    noStroke();
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
    
}
    nightMode=true;    
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
 nightMode=false;}
    
    if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
    if ( mouseX>=nightModeX && mouseX<=nightModeX+nightModeWidth && mouseY>=nightModeY && mouseY<=nightModeY+nightModeHeight)  
    { if (nightMode==false) {
  nightMode=true;backgroundColor = color( random(255), random(255), 0 ) ; 
    background( backgroundColor );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  } else {nightMode=false;backgroundColor = color( random(255), random(255), 0 );
    background( backgroundColor );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);}}
  
  
  //
  
 
  //
}//End mousePressed
//
//End MAIN Program
