import 'package:events_finder/features/authenticate/data/sources/authentication_local_data_source.dart';
import 'package:events_finder/features/authenticate/data/sources/authentication_remote_data_source.dart';
import 'package:events_finder/features/authenticate/domain/entities/token_entity.dart';
import 'package:events_finder/features/authenticate/domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationRemoteDataSource remote;
  final AuthenticationLocalDataSource local;

  AuthenticationRepositoryImpl({required this.remote, required this.local});

  @override
  Future<TokenEntity> authenticate(String username, String password) async {
    return remote.authenticate(username, password).then((value) {
      local.cacheToken(value);
      return value;
    });
  }

  @override
  Future<void> clearCacheToken() async {
    local.clearCacheToken();
  }

  @override
  Future<TokenEntity> getCachedToken() {
    return local.getCachedToken();
  }
}
