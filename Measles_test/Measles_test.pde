//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, smallerDimension,
yCenter;
float xLefteye, yLefteye, LefteyeDiameter;
float xRighteye, yRighteye, RighteyeDiameter;
float xNoseBridge,yNoseBridge, xLeftNostril,yLeftNostril, xRightNostril,yRightNostril;
float xLeftMouth,yLeftMouth,xRightMouth,yRightMouth;
int thack=50;
float xMeasle, yMeasle, measlesDiameter;
color resetWhite=#FFFFFF, red=#FF0000;// similar to int declaration
color backgroundColor;
Boolean nightMode=false;
//
void setup() 
{
  //CANVAS will will be added to later
  size(800,600); //Landscape
  //
  //Population
  xFace = xCenter = width/2;
  yFace = yCenter = height/2;
  if (width>= height) {smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLefteye = xCenter-smallerDimension/6;
  yLefteye = yCenter-smallerDimension/6;
  LefteyeDiameter = smallerDimension/6;
  xRighteye = xCenter+smallerDimension/6;
  yRighteye = yCenter-smallerDimension/6;
  RighteyeDiameter = smallerDimension/6;
  xLeftMouth = xLefteye;
  yLeftMouth = yCenter+smallerDimension/6;
  xRightMouth = xRighteye;
  yRightMouth = yCenter+smallerDimension/6;
  xNoseBridge = xCenter;
  yNoseBridge = yLefteye;
  xLeftNostril = xCenter-smallerDimension/6+smallerDimension/12;
  yLeftNostril = yCenter;
  xRightNostril =xCenter+smallerDimension/6-smallerDimension/12;
  yRightNostril = yCenter;  
  faceRadius = smallerDimension/2;
  measlesDiameter = smallerDimension/40;
  //
  color backgroundColor = ( nightMode==true ) ? color(random(255), random(255), random(0)): color(random(255), random(255), random(255)); //ternary operator, similar to IF-Else
  backgroundColor= color(random(255), random(255), random(255) );
  background( backgroundColor );
  rect(xCenter-faceRadius,0, 2*faceRadius, smallerDimension);//See X&Y Measles Random postsioning.
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  
}//End setup
//
void draw() 
{
  ellipse(xLefteye, yLefteye, LefteyeDiameter, LefteyeDiameter); 
  ellipse(xRighteye, yRighteye, RighteyeDiameter, RighteyeDiameter); 
  triangle(xNoseBridge, yNoseBridge, xLeftNostril,yLeftNostril, xRightNostril,yRightNostril ); 
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  line(xLeftMouth,yLeftMouth,xRightMouth,yRightMouth); 
  strokeWeight(1);//Reset default 
  //yMeasle = random(smallerDimension);
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  //xMeasle = random();
  yMeasle = random(smallerDimension); //if zero is first, then default
  if (dist(xCenter, yCenter, xMeasle, yMeasle)>faceRadius){fill(backgroundColor);}
  else{
  fill(red);
   }
  //rect(xCenter-faceRadius,0, 2*faceRadius, smallerDimension);
  noStroke();
  measlesDiameter = random(smallerDimension*1/40);
  ellipse(xMeasle, yMeasle, measlesDiameter, measlesDiameter);
  stroke(1);//reset default
  fill(resetWhite);
}//End draw
//
void keyPressed() {
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
