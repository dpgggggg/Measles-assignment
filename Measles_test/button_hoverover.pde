color yellow=#D8FF00, darkRed=#790109, resetButtonColour=#FF0000, buttonFill;
void buttons1() {
  if(mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) {
    buttonFill = yellow ;
  } else {
    buttonFill =darkRed;
  }//End Hover-Over
  fill(buttonFill); //
   rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetButtonColour);
  
  
  if(mouseX>=startButtonX && mouseX<=startButtonX+startButtonWidth && mouseY>=startButtonY && mouseY<=startButtonY+startButtonHeight) {
    buttonFill = yellow ;
  } else {
    buttonFill = darkRed;
  }//End Hover-Over
  fill(buttonFill); //
   rect(startButtonX,startButtonY,startButtonWidth,startButtonHeight);
  fill(resetButtonColour);
  
  if(mouseX>=nightModeX && mouseX<=nightModeX+nightModeWidth && mouseY>=nightModeY && mouseY<=nightModeY+nightModeHeight) {
    buttonFill = yellow ;
  } else {
    buttonFill = darkRed;
  }//End Hover-Over
  fill(buttonFill); //
   rect(nightModeX, nightModeY, nightModeWidth, nightModeHeight);
  fill(resetButtonColour);
  
  
  
  
  
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
