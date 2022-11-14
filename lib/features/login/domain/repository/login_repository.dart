import 'package:events_finder/features/login/domain/entities/user_entity.dart';

abstract class LoginRepository {
  Future<UserEntity> login(String username, String password);
}
