import 'package:dio/dio.dart';

class DioNetworkImpl {
  final Dio client;

  DioNetworkImpl({required this.client});

  Future<dynamic> get(String path, {Map<String, dynamic>? queryParameters}) {
    throw UnimplementedError();
  }
}
