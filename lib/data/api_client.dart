import 'package:dio/dio.dart';
import 'dio_config.dart';

class ApiClient {
  late Dio _dio;

  ApiClient() {
    _dio = DioConfig.createDio();
  }

  // GET - Unwrap ApiResponse<T>
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      
      // Unwrap ApiResponse<T> - lấy data trực tiếp
      return _handleResponse(response.data);
    } catch (e) {
      rethrow;
    }
  }

  // POST - Unwrap ApiResponse<T>
  Future<dynamic> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      
      // 🔥 Unwrap ApiResponse<T>
      return _handleResponse(response.data);
    } catch (e) {
      rethrow;
    }
  }

  // PUT - Unwrap ApiResponse<T>
  Future<dynamic> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      
      // Unwrap ApiResponse<T>
      return _handleResponse(response.data);
    } catch (e) {
      rethrow;
    }
  }

  // DELETE - Unwrap ApiResponse<T>
  Future<dynamic> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      
      // 🔥 Unwrap ApiResponse<T>
      return _handleResponse(response.data);
    } catch (e) {
      rethrow;
    }
  }

  // 🔥 **KEY METHOD** - Unwrap ApiResponse<T>
  dynamic _handleResponse(dynamic response) {
    // ✅ Kiểm tra có phải ApiResponse<T> không
    if (response is Map<String, dynamic>) {
      final isSuccess = response['isSuccess'] as bool? ?? false;
      final statusCode = response['statusCode'] as int? ?? 0;
      final message = response['message'] as String? ?? '';
      final data = response['data'];
      final errors = response['errors'];

      // Nếu không success - throw error
      if (!isSuccess) {
        throw ApiException(
          message: message,
          statusCode: statusCode,
          errors: errors,
        );
      }

      // Nếu success - trả về data (unwrap)
      return data;
    }

    // Nếu không phải Map - return nguyên response
    return response;
  }

  Dio get dio => _dio;
}

// Custom Exception để handle ApiResponse error
class ApiException implements Exception {
  final String message;
  final int statusCode;
  final dynamic errors;

  ApiException({
    required this.message,
    required this.statusCode,
    this.errors,
  });

  @override
  String toString() => message;
}