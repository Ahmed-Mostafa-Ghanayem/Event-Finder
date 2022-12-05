import 'package:events_finder/features/user/domain/entities/user_entity.dart';

abstract class UserRemoteDataSource {
  Future<UserEntity> getUser();
}