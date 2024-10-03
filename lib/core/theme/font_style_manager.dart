import 'package:beauty_salon/core/theme/font_weight_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class FontStyleManager {
  //**********  Web */

  static TextStyle font6GreenRegular = TextStyle(
    fontSize: 6.sp,
    fontWeight: FontWeightManager.regular,
    color: Colors.green,
  );
  static TextStyle font5BlackMedium = TextStyle(
    fontSize: 5.sp,
    fontWeight: FontWeightManager.medium,
    color: Colors.black,
  );
  static TextStyle font4BlackRegular = TextStyle(
    fontSize: 4.sp,
    fontWeight: FontWeightManager.regular,
    color: Colors.black,
  );

  //**********  Mobile */
  static TextStyle font6GreenRegularM = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
    color: Colors.green,
  );
  static TextStyle font5BlackMediumM = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightManager.medium,
    color: Colors.black,
  );
  static TextStyle font4BlackRegularM = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: Colors.black,
  );
}
