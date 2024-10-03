import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/font_style_manager.dart';
import '../../../../core/utils/string_manager.dart';
import '../../cubit/partnership_cubit.dart';

class ArabicContent extends StatelessWidget {
  const ArabicContent({super.key, required this.isMobile});
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<PartnershipCubit>();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.partnershipAgreementAr,
            style: isMobile ? FontStyleManager.font6GreenRegularM : FontStyleManager.font6GreenRegular,
            textAlign: TextAlign.center,
          ),
          24.verticalSpace,
          Text(
            "${AppStrings.dearAr} ${cubit.isSalon ? cubit.salonData?.salonName : cubit.beautyData?.beauticianName}",
            style: isMobile ? FontStyleManager.font5BlackMediumM : FontStyleManager.font5BlackMedium,
          ),
          24.verticalSpace,
          Text(AppStrings.findPartnershipAttachmentAr, style: isMobile ? FontStyleManager.font4BlackRegularM : FontStyleManager.font4BlackRegular),
          24.verticalSpace,
          Text(AppStrings.haveAnyQuestionAr, style: isMobile ? FontStyleManager.font4BlackRegularM : FontStyleManager.font4BlackRegular),
          24.verticalSpace,
          Text(AppStrings.thanksForCooperationAr, style: isMobile ? FontStyleManager.font4BlackRegularM : FontStyleManager.font4BlackRegular),
          32.verticalSpace,
          Text(AppStrings.bestRegardsAr, style: isMobile ? FontStyleManager.font4BlackRegularM : FontStyleManager.font4BlackRegular),
          6.verticalSpace,
          Text(AppStrings.pingTeamAr, style: isMobile ? FontStyleManager.font4BlackRegularM : FontStyleManager.font4BlackRegular),
        ],
      ),
    );
  }
}
