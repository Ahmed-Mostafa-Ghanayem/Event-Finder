import '../../domain/entities/home_entity.dart';
import '../../domain/repository/home_repository.dart';
import '../sources/home_remote_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remote;

  HomeRepositoryImpl({required this.remote});

  @override
  Future<HomeEntity> getEventsHome() {
    return remote.getEventsHome();
  }
}
