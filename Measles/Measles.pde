//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace;
float xLefteye, yLefteye, LefteyeDiameter;
float xRighteye, yRighteye, RighteyeDiameter;
float xNoseBridge,yNoseBridge, xLeftNostril,yLeftNostril, xRightNostril,yRightNostril;
float xLeftMouth,yLeftMputh,xRightMouth,yRightMouth;
float xMeasle, yMeasle, MeaslesDiameter, measlesDiameter;
//
void setup() 
{
  //CANVAS will will be added to later
  size(800,600); //Landscape
  //
  //Population
  float xCenter;
  xFace = xCenter = width/2;
  yFace = height/2;
  float smallerDimension;
  if (width>= height) {smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLefteye = smallerDimension/2;
  yLefteye = smallerDimension/3;
  LefteyeDiameter = height/6;
  xRighteye = smallerDimension/1.2;
  yRighteye = smallerDimension/3;
  RighteyeDiameter = height/6;
 
}//End setup
//
void draw() 
{
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  ellipse(xLefteye, yLefteye, LefteyeDiameter, LefteyeDiameter); 
  ellipse(xRighteye, yRighteye, RighteyeDiameter, RighteyeDiameter); 
  triangle(xNoseBridge, yNoseBridge, xLeftNostril,yLeftNostril, xRightNostril,yRightNostril ); 
  line(xLeftMouth,yLeftMputh,xRightMouth,yRightMouth); 
  //
  ellipse(xMeasle, yMeasle, MeaslesDiameter, measlesDiameter);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
