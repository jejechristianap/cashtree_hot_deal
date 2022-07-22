import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../core/custom_exception.dart';

class ApiProvider {
  late Dio dio;

  ApiProvider() {
    dio = Dio(
      BaseOptions(
        validateStatus: (status) => true,
        followRedirects: false,
        baseUrl: "https://jsonplaceholder.typicode.com/",
        connectTimeout: 30000,
        receiveTimeout: 30000,
      ),
    );
  }

  Future<Map<String, dynamic>> get(
      {required String endPoint, Map<String, dynamic>? query}) async {
    try {
      final Response response = await dio.get(
        endPoint,
        queryParameters: query,
      );
      final Map<String, dynamic> responseData = classifyResponse(response);
      log('path: ${response.requestOptions.path}');
      log('responseData: $responseData');
      log('query: $query');
      return responseData;
    } on DioError catch (err) {
      log('error: $err');
      throw FetchDataException("$err");
    }
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint,
      Map<String, dynamic>? data,
      FormData? formData}) async {
    try {
      final Response response = await dio.post(
        endPoint,
        data: data ?? formData,
      );
      final Map<String, dynamic> responseData = classifyResponse(response);
      log('path: ${response.requestOptions.path}');
      log('responseData: $responseData');
      return responseData;
    } on DioError catch (err) {
      throw FetchDataException("$err");
    }
  }

  Map<String, dynamic> classifyResponse(Response response) {
    final Map<String, dynamic> responseData =
        response.data as Map<String, dynamic>;
    switch (response.statusCode) {
      case 200:
        return responseData;
      case 400:
      case 401:
        throw UnauthorisedException(responseData["error"].toString());
      case 500:
      default:
        throw FetchDataException(
          'Error occurred while Communication with Server with StatusCode : ${response.statusCode}',
        );
    }
  }
}
