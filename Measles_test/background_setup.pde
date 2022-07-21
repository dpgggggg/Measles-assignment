float startButtonX,startButtonY,startButtonWidth,startButtonHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;

void structure()
{
  //Population
  //startButton
int cornerButtonWidth = xCenter*1/2;
int cornerButtonHeight = yCenter*1/2;
  startButtonX = xCenter - cornerButtonWidth - cornerButtonWidth/2 ;
  startButtonY = yCenter - cornerButtonHeight ;
  startButtonWidth = width*1/6;
  startButtonHeight = height*1/8;
//quitButton
  quitButtonX = xCenter - cornerButtonWidth - cornerButtonWidth/2;
  quitButtonY = yCenter + cornerButtonHeight*25  ;
  quitButtonWidth = width*1/6 ;
  quitButtonHeight =  height*1/8;
  
  
  
 
}
