import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/font_style_manager.dart';
import '../../../../core/utils/string_manager.dart';
import '../../cubit/partnership_cubit.dart';

class EnglishContant extends StatelessWidget {
  const EnglishContant({super.key, required this.isMobile});
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            AppStrings.partnershipAgreementEn,
            style: isMobile
                ? FontStyleManager.font6GreenRegularM
                : FontStyleManager.font6GreenRegular,
            textAlign: TextAlign.center,
          ),
        ),
        24.verticalSpace,
        BlocBuilder<PartnershipCubit, PartnershipState>(
          builder: (context, state) {
            var cubit = context.read<PartnershipCubit>();
            return Text(
              "${AppStrings.dearEn} ${cubit.isSalon ? cubit.salonData?.salonName : cubit.beautyData?.beauticianName}",
              style: isMobile
                  ? FontStyleManager.font5BlackMediumM
                  : FontStyleManager.font5BlackMedium,
            );
          },
        ),
        24.verticalSpace,
        Text(AppStrings.findPartnershipAttachmentEn,
            style: isMobile
                ? FontStyleManager.font4BlackRegularM
                : FontStyleManager.font4BlackRegular),
        24.verticalSpace,
        Text(AppStrings.haveAnyQuestionEn,
            style: isMobile
                ? FontStyleManager.font4BlackRegularM
                : FontStyleManager.font4BlackRegular),
        24.verticalSpace,
        Text(AppStrings.thanksForCooperationEn,
            style: isMobile
                ? FontStyleManager.font4BlackRegularM
                : FontStyleManager.font4BlackRegular),
        32.verticalSpace,
        Text(AppStrings.bestRegardsEn,
            style: isMobile
                ? FontStyleManager.font4BlackRegularM
                : FontStyleManager.font4BlackRegular),
        6.verticalSpace,
        Text(AppStrings.pingTeamEn,
            style: isMobile
                ? FontStyleManager.font4BlackRegularM
                : FontStyleManager.font4BlackRegular),
      ],
    );
  }
}
