import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:events_finder/features/home/data/sources/home_remote_data_source.dart';
import 'package:events_finder/features/home/domain/entities/home_entity.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio dio = Dio();

  HomeRemoteDataSourceImpl() {
    dio.options
      ..baseUrl = "https://4uc1gdg1vf.api.quickmocker.com/"
      ..responseType = ResponseType.plain
      ..followRedirects = false;
  }

  @override
  Future<HomeEntity> getEventsHome() async {
    return dio
        .get("home")
        .then((response) => jsonDecode(response.data))
        .then((data) => HomeEntity.fromJson(data));
  }
}
