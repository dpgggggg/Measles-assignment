float startButtonX,startButtonY,startButtonWidth,startButtonHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float nightModeX, nightModeY, nightModeWidth, nightModeHeight;
String startButtonText= "Start/Stop";
String quitButtonText= "Quit";
String nightModeText="NightModeON/OFF";
PFont buttonFont;
color white=#FCFCFF;


void structure()
{
  //Population
  //startButton
int cornerButtonWidth = xCenter*1/2;
int cornerButtonHeight = yCenter*1/2;
  appWidth=width;
  appHeight=height;
  startButtonX = xCenter - cornerButtonWidth*2  ;
  startButtonY = yCenter - cornerButtonHeight*2 ;
  startButtonWidth = appWidth*1/6;
  startButtonHeight = appHeight*1/10;
//quitButton
  quitButtonX = xCenter - cornerButtonWidth*2;
  quitButtonY = yCenter - cornerButtonHeight - startButtonHeight- startButtonHeight/2  ;
  quitButtonWidth = appWidth*1/6 ;
  quitButtonHeight =  appHeight*1/10;
  nightModeX = xCenter - cornerButtonWidth*2;
  nightModeY = yCenter + cornerButtonHeight + cornerButtonHeight/4;
  nightModeWidth =appWidth*1/6 ;
  nightModeHeight =appHeight*1/10 ;
  // 
  buttonFont= createFont ("TimesNewRomanPSMT-48", 18);
  
}

void buttons() {
  rect(startButtonX,startButtonY,startButtonWidth,startButtonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  rect(nightModeX, nightModeY, nightModeWidth, nightModeHeight);
  stroke(1);
  fill(white);
  textAlign(CENTER,CENTER);
  textFont(buttonFont, 24);
  
  
  
  //
  text(startButtonText,startButtonX,startButtonY,startButtonWidth,startButtonHeight);
  text(quitButtonText,quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  text(nightModeText, nightModeX, nightModeY, nightModeWidth, nightModeHeight);
  stroke(1);
  fill(resetWhite);
}
