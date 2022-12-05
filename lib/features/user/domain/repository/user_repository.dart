import 'package:events_finder/features/user/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getUser();

  Future<UserEntity> getCachedUser();

  Future<void> clearCachedUser();
}
