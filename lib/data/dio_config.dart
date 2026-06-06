import 'package:dio/dio.dart';
import 'package:macro_os/config/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioConfig {
  static Dio createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.backendUrl,
        connectTimeout: Duration(milliseconds: AppConstants.connectTimeout),
        receiveTimeout: Duration(milliseconds: AppConstants.receiveTimeout),
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        headers: {
          'Accept': 'application/json',
          'User-Agent': 'Flutter-App/1.0.0',
        },
      ),
    );

    // Interceptors
    _setupInterceptors(dio);

    return dio;
  }

  static void _setupInterceptors(Dio dio) {
    // Logger (DEBUG mode)
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      ),
    );

    // Custom interceptor xử lý token, error...
    // (Sẽ tạo ở file riêng)
  }
}
