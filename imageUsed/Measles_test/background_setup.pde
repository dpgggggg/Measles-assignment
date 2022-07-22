float startButtonX,startButtonY,startButtonWidth,startButtonHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
String startButtonText= "Start/Stop";
String quitButtonText= "Quit";
PFont buttonFont;
color orange=#FA0000;


void structure()
{
  //Population
  //startButton
int cornerButtonWidth = xCenter*1/2;
int cornerButtonHeight = yCenter*1/2;
  startButtonX = xCenter - cornerButtonWidth*2  ;
  startButtonY = yCenter - cornerButtonHeight*2 ;
  startButtonWidth = width*1/6;
  startButtonHeight = height*1/10;
//quitButton
  quitButtonX = xCenter - cornerButtonWidth*2;
  quitButtonY = yCenter - cornerButtonHeight - startButtonHeight- startButtonHeight/2  ;
  quitButtonWidth = width*1/6 ;
  quitButtonHeight =  height*1/10;
  //
  buttonFont= createFont ("HPSimplified-Light-48", 18);
  
}

void buttons() {
  rect(startButtonX,startButtonY,startButtonWidth,startButtonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(1);
  fill(orange);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 24);
  
  
  
  //
  text(startButtonText,startButtonX,startButtonY,startButtonWidth,startButtonHeight);
  text(quitButtonText,quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(1);
  fill(resetWhite);
}
