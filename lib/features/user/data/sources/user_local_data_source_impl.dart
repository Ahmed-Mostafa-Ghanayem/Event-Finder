import 'package:events_finder/features/user/data/sources/user_local_data_source.dart';
import 'package:events_finder/features/user/domain/entities/user_entity.dart';

class UserLocalDataSourceImpl implements UserLocalDataSource {

  @override
  Future<void> cacheUser(UserEntity userEntity) async {

  }

  @override
  Future<UserEntity> getCachedUser() async {
    throw UnimplementedError();
  }

  @override
  Future<void> clearCachedUser() async {

  }
}