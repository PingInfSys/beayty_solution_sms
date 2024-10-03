import '../../../core/database/api_response.dart';
import '../../../core/database/dio_consumer.dart';
import '../../../core/database/end_points.dart';
import '../../../core/utils/enum_manager.dart';

class PartnershipRepository {
  // ****** GetSalonByIdAndPhoneNumber ************
  Future<ApiResponseModel> getSalonByIdAndPhone({
    required String idAndPhone,
  }) async {
    return DioConsumer.request(
      EndPoints.getSalonByIdAndPhone,
      ApiMethodType.get,
      queryParameters: {'input': idAndPhone},
    );
  }

}
