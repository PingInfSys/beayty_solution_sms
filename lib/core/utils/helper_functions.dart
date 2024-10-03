import 'dart:io';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HelperFunctions {
  static bool isTablet = 1.sw > 600 ? true : false;
  dynamic definePlatform(var p1, var p2) =>
      (Platform.isIOS || Platform.isAndroid || Platform.isFuchsia) ? p1 : p2;
  static launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      //  UIGlobal.showCustomTost(message: 'Could not launch $url');
      throw 'Could not launch $url';
    }
  }
}
