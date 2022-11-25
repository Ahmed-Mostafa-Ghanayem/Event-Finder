import '../../domain/entities/home_entity.dart';

abstract class HomeRemoteDataSource {
  Future<HomeEntity> getEventsHome();
}


