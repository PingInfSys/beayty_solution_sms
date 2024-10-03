import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/helper_functions.dart';
import '../../../../core/utils/string_manager.dart';
import '../../cubit/partnership_cubit.dart';
import '../custom_button.dart';
import 'arabic_content.dart';
import 'english_content.dart';

class PartnershipContent extends StatelessWidget {
  const PartnershipContent({super.key, required this.idAndPhone, required this.ismobile});
  final String idAndPhone;
  final bool ismobile;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<PartnershipCubit>();

    return SingleChildScrollView(
      child: Container(
        color: Colors.white.withOpacity(0.4),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: .15.sw, vertical: 0.03.sh),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EnglishContant(
                isMobile: ismobile,
              ),
              24.verticalSpace,
              ArabicContent(
                isMobile: ismobile,
              ),
              24.verticalSpace,
              // buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    text: "${AppStrings.contractEn} / ${AppStrings.contractAr}",
                    onTap: () {
                      HelperFunctions.launchURL(cubit.isSalon ? cubit.salonData!.pdfUrl! : cubit.beautyData!.pdfUrl);
                    },
                  ),
                  24.horizontalSpace,
                  CustomButton(
                    text: "${AppStrings.agreeEn} / ${AppStrings.agreeAr}",
                    onTap: () {
                      HelperFunctions.launchURL("https://beautycenter.runasp.net/api/Sms/AgreeOnContractAgreement?input=$idAndPhone");
                    },
                  ),
                ],
              ),
              24.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

