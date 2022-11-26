import 'package:events_finder/features/authenticate/data/sources/authentication_local_data_source.dart';
import 'package:events_finder/features/authenticate/domain/entities/token_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationLocalDataSourceImpl
    implements AuthenticationLocalDataSource {
  final SharedPreferences preferences;

  AuthenticationLocalDataSourceImpl({required this.preferences});

  @override
  Future<void> cacheToken(TokenEntity tokenEntity) async {}

  @override
  Future<TokenEntity> getCachedToken() async {
    throw UnimplementedError();
  }

  @override
  Future<void> clearCacheToken() async {}
}
