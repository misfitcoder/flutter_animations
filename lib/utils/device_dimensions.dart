import 'package:flutter/material.dart';

class DeviceDimensions {
  static double deviceWidth(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  static double deviceHeight(BuildContext context) {
    return MediaQuery.sizeOf(context).height;
  }
}
