import 'package:events_finder/features/authenticate/data/sources/authentication_remote_data_source.dart';
import 'package:events_finder/features/authenticate/domain/entities/token_entity.dart';
import 'package:events_finder/features/authenticate/domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationRemoteDataSource remote;

  AuthenticationRepositoryImpl({required this.remote});

  @override
  Future<TokenEntity> authenticate(String username, String password) async {
    return remote.authenticate(username, password);
  }

  Future<TokenEntity> cacheUser(TokenEntity user) async {
    // Todo cache user data
    return user;
  }
}
