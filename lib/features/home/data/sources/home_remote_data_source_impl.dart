import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:events_finder/features/home/data/sources/home_remote_data_source.dart';
import 'package:events_finder/features/home/domain/entities/home_entity.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio httpClient;

  HomeRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<HomeEntity> getEventsHome() async {
    return httpClient
        .get("home")
        .then((response) => jsonDecode(response.data))
        .then((data) => HomeEntity.fromJson(data));
  }
}
