import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:events_finder/features/authenticate/data/sources/authentication_remote_data_source.dart';
import 'package:events_finder/features/authenticate/domain/entities/token_entity.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final Dio dio = Dio();

  AuthenticationRemoteDataSourceImpl() {
    dio.interceptors.add(PrettyDioLogger());
    dio.options
      ..baseUrl = "https://4uc1gdg1vf.api.quickmocker.com/"
      ..responseType = ResponseType.plain
      ..followRedirects = false;
  }

  @override
  Future<TokenEntity> authenticate(String username, String password) async {
    return dio
        .post(
          "authenticate",
          data: {
            "username": username,
            "password": password,
          },
        )
        .then((response) => jsonDecode(response.data))
        .then((data) => TokenEntity.fromJson(data));
  }
}
