import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../cubit/partnership_cubit.dart';
import 'loading_widget.dart';
import 'no_user_found_widget.dart';
import 'partnership_content.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key, this.idAndPhone});
  final String? idAndPhone;

  @override
  Widget build(BuildContext context) {
    final isMobile =
        ScreenUtil().screenWidth > 300 && ScreenUtil().screenWidth < 900;
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          child: Image.asset(
            isMobile ? ImageAssets.backgroundM : ImageAssets.background,
            fit: BoxFit.contain,
          ),
        ),
        BlocBuilder<PartnershipCubit, PartnershipState>(
            builder: (context, state) {
          if (state is GetSalonByIdAndPhoneNumberSuccess) {
            return PartnershipContent(
              idAndPhone: idAndPhone!,
              ismobile: isMobile,
            );
          } else if (state is GetSalonByIdAndPhoneNumberLoading) {
            return const LoadingWidget();
          } else {
            return const NoUserFoundWidget();
          }
        }),
      ],
    );
  }
}
