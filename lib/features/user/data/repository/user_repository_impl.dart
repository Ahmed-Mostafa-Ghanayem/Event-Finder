import 'package:events_finder/features/user/data/sources/user_local_data_source.dart';
import 'package:events_finder/features/user/data/sources/user_remote_data_source.dart';
import 'package:events_finder/features/user/domain/entities/user_entity.dart';
import 'package:events_finder/features/user/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remote;
  final UserLocalDataSource local;

  UserRepositoryImpl({required this.remote, required this.local});

  @override
  Future<UserEntity> getUser() async {
    return remote.getUser().then((user) {
      local.cacheUser(user);
      return user;
    });
  }

  @override
  Future<void> clearCachedUser() {
    return local.clearCachedUser();
  }

  @override
  Future<UserEntity> getCachedUser() {
    return local.getCachedUser();
  }
}
