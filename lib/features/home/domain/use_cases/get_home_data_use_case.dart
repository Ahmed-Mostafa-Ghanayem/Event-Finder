import 'package:events_finder/features/home/domain/entities/home_entity.dart';
import 'package:events_finder/features/home/domain/repository/home_repository.dart';

class GetHomeDataUseCase {
  final HomeRepository repository;

  GetHomeDataUseCase({required this.repository});

  Future<HomeEntity> call() {
    return repository.getEventsHome();
  }
}
