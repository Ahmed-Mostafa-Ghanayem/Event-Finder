import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:events_finder/features/authenticate/data/sources/authentication_remote_data_source.dart';
import 'package:events_finder/features/authenticate/domain/entities/token_entity.dart';

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final Dio httpClient;

  AuthenticationRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<TokenEntity> authenticate(String username, String password) async {
    return httpClient
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
