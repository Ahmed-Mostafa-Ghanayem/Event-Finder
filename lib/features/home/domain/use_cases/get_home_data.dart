import '../entities/home_entity.dart';
import '../repository/home_repository.dart';

class GetHomeDataUseCase {
  final HomeRepository repository;

  GetHomeDataUseCase({required this.repository});

  Future<HomeEntity> call() {
    return repository.getEventsHome();
  }
}
