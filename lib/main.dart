import 'package:beauty_salon/beauty_salon_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/utils/services.init.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  await initServices();
  runApp(const BeautySalonApp());
}

Future<void> initServices() async {
  await ServicesInit().init();
}
