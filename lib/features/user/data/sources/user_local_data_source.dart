import 'package:events_finder/features/user/domain/entities/user_entity.dart';

abstract class UserLocalDataSource {

  Future<void> cacheUser(UserEntity userEntity);

  Future<UserEntity> getCachedUser();

  Future<void> clearCachedUser();
}