import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class ApiInterceptor extends Interceptor {
  final GetStorage _storage = GetStorage();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Thêm token vào header
    final token = _storage.read('auth_token');
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // 401 - Token expired
    if (err.response?.statusCode == 401) _handleUnauthorized();

    // 403 - Forbidden
    if (err.response?.statusCode == 403) {
      // Handle forbidden
    }
    return handler.next(err);
  }

  void _handleUnauthorized() {
    // Xóa token
    _storage.remove('auth_token');
    // Navigate to login...
  }
}
