import 'package:dio/dio.dart';

import '../di/setup_dependenc_injection.dart';
import '../utils/app_logs.dart';
import '../utils/enum_manager.dart';
import 'api_response.dart';
import 'network_service.dart';

class DioConsumer {
  static final Dio _dio = locator<NetworkService>().dio;
  static Future<ApiResponseModel> request(
      String path, ApiMethodType? requestType,
      {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await _performRequest(path, requestType, body, queryParameters);
      return _handleResponse(response);
    } on DioException catch (error) {
      return _handleError(error);
    }
  }

  static Future<Response<dynamic>> _performRequest(
      String path,
      ApiMethodType? requestType,
      Object? body,
      Map<String, dynamic>? queryParameters) {
    switch (requestType) {
      case ApiMethodType.get:
        return _dio.get(path, queryParameters: queryParameters);
      case ApiMethodType.post:
        return _dio.post(path, queryParameters: queryParameters, data: body);
      case ApiMethodType.put:
        return _dio.put(path, queryParameters: queryParameters, data: body);
      case ApiMethodType.delete:
        return _dio.delete(path, queryParameters: queryParameters, data: body);
      default:
        throw ArgumentError('Invalid request type: $requestType');
    }
  }

  static ApiResponseModel _handleResponse(Response<dynamic> response) {
    final data = response.data;
    final message = data['message'];
    final stateCode = data['statusCode'];
    AppLogs.successLog(data.toString(), "Response from http");

    if (stateCode.toString().startsWith('2')) {
      return ApiResponseModel(
          status: ApiStatus.success,
          data: data,
          message: message,
          stateCode: stateCode,
          extraData: data["isSalon"]);
    } else {
      AppLogs.errorLog(
          'Error: $message /n statecode :$stateCode  /n data :$data  /n status :${ApiStatus.error}');
      return ApiResponseModel(
          status: ApiStatus.error,
          data: data,
          stateCode: stateCode,
          message: message);
    }
  }

  static ApiResponseModel _handleError(DioException error) {
    if (error.response != null) {
      final data = error.response?.data;
      final message = data['message'];
      final stateCode = error.response?.statusCode ?? 400;
      AppLogs.errorLog(data.toString());
      AppLogs.errorLog(stateCode.toString());
      AppLogs.errorLog(message.toString());
      return ApiResponseModel(
          status: ApiStatus.error,
          data: data,
          stateCode: stateCode,
          message: message);
    } else {
      AppLogs.errorLog(
          '${error.toString().contains('SocketException') ? "check_network" : error.error ?? 'Unknown Error'}');

      throw error.toString().contains('SocketException')
          ? 'Please check your network connection'
          : error.error ?? 'Unknown Error';
    }
  }
}
