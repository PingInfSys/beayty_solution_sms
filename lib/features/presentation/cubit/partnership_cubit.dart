import 'package:beauty_salon/core/utils/app_logs.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/enum_manager.dart';
import '../../data/models/beauty_model.dart';
import '../../data/models/salon_model.dart';
import '../../data/repos/partnership_repo.dart';

part 'partnership_state.dart';

class PartnershipCubit extends Cubit<PartnershipState> {
  PartnershipCubit() : super(PartnershipInitial());

  SalonData? salonData;
  Data? beautyData;
  bool isSalon = false;

  // ********** GetSalonByIdAndPhoneNumber ********************
  Future<void> getSalonByIdAndPhone(String idAndPhone) async {
    try {
      emit(GetSalonByIdAndPhoneNumberLoading());
      debugPrint("Loading...");
      // Simulate a network call and wait a moment
      final response = await PartnershipRepository().getSalonByIdAndPhone(idAndPhone: idAndPhone);
      if (response.status == ApiStatus.success) {
        isSalon = response.extraData;
        if (response.extraData) {
          final SalonModel userModel = SalonModel.fromJson(response.data);
          salonData = userModel.userData;
        } else {
          final BeautyModel userModel = BeautyModel.fromJson(response.data);
          beautyData = userModel.data;
        }
        emit(GetSalonByIdAndPhoneNumberSuccess());
      } else {
        AppLogs.errorLog(response.message);
        emit(GetSalonByIdAndPhoneNumberError(error: response.message));
      }
    } catch (e) {
      AppLogs.errorLog(e.toString());
      emit(GetSalonByIdAndPhoneNumberError(error: e.toString()));
    }
  }

 
}
