import 'package:events_finder/features/authenticate/domain/repository/authentication_repository.dart';

class ClearTokenUseCase {
  final AuthenticationRepository repository;

  ClearTokenUseCase({required this.repository});

  Future<void> call() async {
    repository.clearCacheToken();
  }
}
