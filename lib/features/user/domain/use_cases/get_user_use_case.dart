import 'package:events_finder/features/user/domain/entities/user_entity.dart';
import 'package:events_finder/features/user/domain/repository/user_repository.dart';

class GetUserUseCase {
  final UserRepository repository;

  GetUserUseCase({required this.repository});

  Future<UserEntity> call() async {
    return repository.getUser();
  }
}
