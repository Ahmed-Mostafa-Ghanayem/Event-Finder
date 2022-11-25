import 'package:events_finder/features/user/data/sources/user_remote_data_source.dart';
import 'package:events_finder/features/user/domain/entities/user_entity.dart';
import 'package:events_finder/features/user/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remote;

  UserRepositoryImpl({required this.remote});

  @override
  Future<UserEntity> getUser() async {
    return remote.getUser().then((value) => cacheUser(value));
  }

  Future<UserEntity> cacheUser(UserEntity user) async {
    // Todo cache user data
    return user;
  }
}
