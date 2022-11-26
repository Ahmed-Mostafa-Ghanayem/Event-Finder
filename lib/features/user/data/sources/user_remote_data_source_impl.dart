import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:events_finder/features/user/data/sources/user_remote_data_source.dart';
import 'package:events_finder/features/user/domain/entities/user_entity.dart';

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio httpClient;

  UserRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<UserEntity> getUser() async {
    return httpClient
        .get("user")
        .then((response) => jsonDecode(response.data))
        .then((data) => UserEntity.fromJson(data));
  }
}
