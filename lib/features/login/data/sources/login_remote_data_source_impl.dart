import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../domain/entities/user_entity.dart';

import 'login_remote_data_source.dart';

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final Dio dio = Dio();

  LoginRemoteDataSourceImpl() {
    dio.interceptors.add(PrettyDioLogger());
    dio.options
      ..baseUrl = "https://4uc1gdg1vf.api.quickmocker.com/"
      ..responseType = ResponseType.plain
      ..followRedirects = false;
  }

  @override
  Future<UserEntity> login(String username, String password) async {
    return dio
        .get("user")
        .then((response) => jsonDecode(response.data))
        .then((data) => UserEntity.fromJson(data));
  }
}
