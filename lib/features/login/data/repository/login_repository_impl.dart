import '../../domain/entities/user_entity.dart';
import '../../domain/repository/login_repository.dart';
import '../sources/login_remote_data_source.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource remote;

  LoginRepositoryImpl({required this.remote});

  @override
  Future<UserEntity> login(String username, String password) async {
    return remote.login(username, password).then((value) => cacheUser(value));
  }

  Future<UserEntity> cacheUser(UserEntity user) async {
    // Todo cache user data
    return user;
  }
}
