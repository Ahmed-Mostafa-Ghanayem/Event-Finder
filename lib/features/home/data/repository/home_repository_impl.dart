import 'package:events_finder/features/home/data/sources/home_remote_data_source.dart';
import 'package:events_finder/features/home/domain/entities/home_entity.dart';
import 'package:events_finder/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remote;

  HomeRepositoryImpl({required this.remote});

  @override
  Future<HomeEntity> getEventsHome() {
    return remote.getEventsHome();
  }
}
