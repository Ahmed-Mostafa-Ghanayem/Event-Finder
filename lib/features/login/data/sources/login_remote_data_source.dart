import '../../domain/entities/user_entity.dart';

abstract class LoginRemoteDataSource {
  Future<UserEntity> login(String username, String password);
}