import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//! ContextExtension

extension ContextExtension on BuildContext {
  //**************** Navigation ****************** */
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

//! numbers

extension AppNumberExtension on num {
  //************ Padding *********************/
  EdgeInsets get allPadding => EdgeInsets.all(toDouble().r);
  EdgeInsets get vPadding => EdgeInsets.symmetric(vertical: toDouble().h);
  EdgeInsets get hPadding => EdgeInsets.symmetric(horizontal: toDouble().w);

  //****************  borderRadius ****************** */
  BorderRadius get borderRadius => BorderRadius.circular(toDouble().r);

  //***************  dividers ****************** */
  Widget get verticalDivider =>
      VerticalDivider(width: toDouble().w, thickness: 1);
  Widget get horizontalDivider => Divider(height: toDouble().h, thickness: 1);
}

//! WidgetExtension
extension WidgetExtension on Widget {
  //************ Padding *********************/
  Widget horizontalPadding(double padding) => Padding(
      padding: EdgeInsets.symmetric(horizontal: padding.w), child: this);
  Widget verticalPadding(double padding) =>
      Padding(padding: EdgeInsets.symmetric(vertical: padding.h), child: this);
  Widget allPadding(double padding) =>
      Padding(padding: EdgeInsets.all(padding.r), child: this);
  Widget onlyPadding(
          {double tPadding = 0,
          double bPadding = 0,
          double rPadding = 0,
          double lPadding = 0}) =>
      Padding(
          padding: EdgeInsets.only(
              bottom: bPadding.h,
              left: lPadding.w,
              right: rPadding.w,
              top: tPadding.h),
          child: this);

  //****************  center ****************** */
  Widget center() => Center(child: this);
}

//************ */ DateTime Extension *********************/


