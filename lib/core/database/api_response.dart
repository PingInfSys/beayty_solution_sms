import '../utils/enum_manager.dart';

class ApiResponseModel {
  ApiStatus status;
  int? stateCode;
  dynamic data;
  String message;
  bool extraData ;
  ApiResponseModel(
      {required this.status, this.data, this.message = '', this.stateCode, this.extraData = false});
}
