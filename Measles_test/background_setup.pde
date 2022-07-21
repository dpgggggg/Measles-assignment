float startButtonX,startButtonY,startButtonWidth,startButtonHeight;

void structure()
{
  //Population
int cornerButtonWidth = xCenter/3;
int cornerButtonHeight = yCenter/3;
  startButtonX = xCenter - cornerButtonWidth ;
  startButtonY = yCenter + cornerButtonHeight ;
  startButtonWidth = width*1/6;
  startButtonHeight = height*1/6;
  
  
  
  
  
  rect(startButtonX,startButtonY,startButtonWidth,startButtonHeight);
}
