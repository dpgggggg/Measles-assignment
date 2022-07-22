float imageX, imageY, imageWidth, imageHeight, picWidthAdjusted, picHeightAdjusted;
float imageLargerDimension, imageSmallerDimension,imageWidthRatio=0.0, imageHeightRatio=0.0;
PImage pic;
Boolean widthLarger=false, heightLarger=false;
//
void Image(){
//Popoulation
pic = loadImage("../imageUsed/9-92605_shocked-mouth-png.png"); //Dimensions: width:820, height: 555
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Algorithm : Find the larger dimesion for aspect ration (comparison of two numbers)
int picWidth = 820;
int picHeight = 555; 
if ( picWidth >= picHeight) {//Image Dimensions Comparison
// True if Landscape or Square
 imageLargerDimension = picWidth;
 imageSmallerDimension = picHeight;
 widthLarger = true;
} else {
  //False if Portrait
  imageLargerDimension = picHeight;
  imageSmallerDimension = picWidth;
  heightLarger = true;
} //End Image Dimension Comparison
println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //Verifyting variables details
//
//Aspect Ration=
//Note: Single line IFs can be summarized into IF-ELSEIF-Else
//Computer chooses which formulae to execute
if( widthLarger == true ) imageWidthRatio = imageLargerDimension/ imageLargerDimension;
if( widthLarger == true ) imageHeightRatio = imageSmallerDimension/ imageLargerDimension;
if( heightLarger == true ) imageWidthRatio = imageSmallerDimension/ imageLargerDimension;
if( heightLarger == true ) imageHeightRatio = imageLargerDimension/ imageLargerDimension;

//Note:
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio of 0-1 similar to style="height:auto" (websites)
//
//
//Note: println() also verifies decimal places, complier will truncate(delete)
//
imageX = xLefteye;
imageY = yCenter+smallerDimension/8;
imageWidth = xRighteye-xLefteye; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight = RighteyeDiameter;
}
//
void imageDraw()
{
rect(imageX, imageY, imageWidth, imageHeight); //Background image
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
image(pic, imageX, imageY, imageWidth, imageHeight);
//image();
}
