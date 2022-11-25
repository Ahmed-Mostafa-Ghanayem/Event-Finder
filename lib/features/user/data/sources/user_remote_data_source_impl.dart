import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:events_finder/features/user/data/sources/user_remote_data_source.dart';
import 'package:events_finder/features/user/domain/entities/user_entity.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio dio = Dio();

  UserRemoteDataSourceImpl() {
    dio.interceptors.add(PrettyDioLogger());
    dio.options
      ..baseUrl = "https://4uc1gdg1vf.api.quickmocker.com/"
      ..responseType = ResponseType.plain
      ..followRedirects = false;
  }

  @override
  Future<UserEntity> getUser() async {
    return dio
        .get("user")
        .then((response) => jsonDecode(response.data))
        .then((data) => UserEntity.fromJson(data));
  }
}
