float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, smallerDimension;
float xLefteye, yLefteye, LefteyeDiameter;
float xLeftPupil, yLeftPupil, LeftPupilDiameter;
float xRighteye, yRighteye, RighteyeDiameter;
float xRightPupil, yRightPupil, RightPupilDiameter;
float xNoseBridge,yNoseBridge, xLeftNostril,yLeftNostril, xRightNostril,yRightNostril;
float xLeftMouth,yLeftMouth,xRightMouth,yRightMouth;
Boolean measlesDrawing =false;
color black=#000000;
  //
 void measlePopulationSetup(){
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
  xLeftPupil = xLefteye;
  yLeftPupil = yLefteye;
  LeftPupilDiameter = LefteyeDiameter/2;
  xRighteye = xCenter+smallerDimension/6;
  yRighteye = yCenter-smallerDimension/6;
  RighteyeDiameter = smallerDimension/6;
  xRightPupil = xRighteye;
  yRightPupil =  yRighteye;
  RightPupilDiameter = RighteyeDiameter/2;
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
  //rect(xCenter-faceRadius,0, 2*faceRadius, smallerDimension);//See X&Y Measles Random postsioning.
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
}
void measlesDraw()
{
  ellipse(xLefteye, yLefteye, LefteyeDiameter, LefteyeDiameter); 
  ellipse(xRighteye, yRighteye, RighteyeDiameter, RighteyeDiameter);
  fill(black);
  stroke(1);
  ellipse(xLeftPupil, yLeftPupil, LeftPupilDiameter, LeftPupilDiameter);
  fill(black);
  stroke(1);
  ellipse(xRightPupil, yRightPupil, RightPupilDiameter, RightPupilDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril,yLeftNostril, xRightNostril,yRightNostril ); 
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  line(xLeftMouth,yLeftMouth,xRightMouth,yRightMouth); 
  strokeWeight(1);//Reset default 
 if (measlesDrawing==true) 
 {
 xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
 yMeasle = random(smallerDimension); //if zero is first, then default
 
  
 }
  
  
 
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
}
