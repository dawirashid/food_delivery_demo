import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.64;    // screen height divide by 320
  static double pageViewContainer = screenHeight / 3.84; // scale factor is get by divided current screen height with container widget
  static double pageViewTextContainer = screenHeight / 7.03;

 // dynamic height for padding and margin
  static double height10 = screenHeight /84.4;
  static double height15 = screenHeight /56.27;
  static double height20 = screenHeight / 42.2;
  static double height45 = screenHeight /18.76;
 // dynamic width for padding and margin
  static double width10 = screenHeight / 84.4;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
 // dynamic radius
  static double font20 = screenHeight/42.2;
  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;
  static double radius15 = screenHeight/56.27;
  // IconSize
  static double iconSize24 = screenHeight/35.17;


}
