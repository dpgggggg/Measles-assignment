float image1X, image1Y, imageWidth1, imageHeight1, picWidthAdjusted1, picHeightAdjusted1;
float imageLargerDimension1, imageSmallerDimension1,imageWidthRatio1=0.0, imageHeightRatio1=0.0;
PImage pic1;
Boolean widthLarger1=false, heightLarger1=false;
//
void Image1(){
//Popoulation
pic1 = loadImage("../imageUsed/65-650539_open-mouth-3-smile-bfdi-mouth.png"); //Dimensions: width:820, height: 532
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Algorithm : Find the larger dimesion for aspect ration (comparison of two numbers)
int picWidth1 = 820;
int picHeight1 = 532; 
if ( picWidth1 >= picHeight1) {//Image Dimensions Comparison
// True if Landscape or Square
 imageLargerDimension = picWidth1;
 imageSmallerDimension = picHeight1;
 widthLarger1 = true;
} else {
  //False if Portrait
  imageLargerDimension1 = picHeight1;
  imageSmallerDimension1 = picWidth1;
  heightLarger1 = true;
} //End Image Dimension Comparison
println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1); //Verifyting variables details
//
//Aspect Ration=
//Note: Single line IFs can be summarized into IF-ELSEIF-Else
//Computer chooses which formulae to execute
if( widthLarger1 == true ) imageWidthRatio1 = imageLargerDimension1/ imageLargerDimension1;
if( widthLarger1 == true ) imageHeightRatio1 = imageSmallerDimension1/ imageLargerDimension1;
if( heightLarger1 == true ) imageWidthRatio1= imageSmallerDimension1/ imageLargerDimension1;
if( heightLarger1 == true ) imageHeightRatio1 = imageLargerDimension1/ imageLargerDimension1;

//Note:
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio of 0-1 similar to style="height:auto" (websites)
//
//
//Note: println() also verifies decimal places, complier will truncate(delete)
//
image1X = xLefteye;
image1Y = yCenter+smallerDimension/8;
imageWidth1 = xRighteye-xLefteye; //CANVAS (0.0) means point doesn't match reactangle, missing outline on two sides
imageHeight1 = RighteyeDiameter;
}
//
void imageDraw2()
{
rect(image1X, image1Y, imageWidth1, imageHeight1); //Background image
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
image(pic1, image1X, image1Y, imageWidth1, imageHeight1);
//image();
}
