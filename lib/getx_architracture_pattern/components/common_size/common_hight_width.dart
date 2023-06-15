import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

double get height => Get.context != null
    ? ResponsiveWrapper.of(Get.context!).screenHeight
    : Get.height;
double get width => Get.context != null
    ? ResponsiveWrapper.of(Get.context!).screenWidth
    : Get.width;

Orientation get currentOrientation => Get.context != null
    ? ResponsiveWrapper.of(Get.context!).orientation
    : Get.mediaQuery.orientation;
bool get isLandscape {
  switch (currentOrientation) {
    case Orientation.portrait:
      return true;
    case Orientation.landscape:
      return false;
    default:
      return true;
  }
}
