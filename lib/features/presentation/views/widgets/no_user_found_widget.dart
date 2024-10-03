import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/font_style_manager.dart';
import '../../../../core/utils/string_manager.dart';

class NoUserFoundWidget extends StatelessWidget {
  const NoUserFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile =
        ScreenUtil().screenWidth > 300 && ScreenUtil().screenWidth < 900;

    return Padding(
      padding: const EdgeInsets.only(top: 400.0),
      child: Center(
          child: Center(
        child: Text(
          AppStrings.errorMessage,
          style: isMobile
              ? FontStyleManager.font4BlackRegularM
              : FontStyleManager.font4BlackRegular,
        ),
      )),
    );
  }
}
