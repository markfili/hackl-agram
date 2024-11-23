import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient({required this.dio});

  Future<T?> get<T>(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    return (await dio.get<T>(endpoint, queryParameters: queryParameters)).data;
  }
}
