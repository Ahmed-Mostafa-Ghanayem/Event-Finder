import 'package:events_finder/features/authenticate/domain/entities/token_entity.dart';

abstract class AuthenticationLocalDataSource {
  Future<void> cacheToken(TokenEntity tokenEntity);

  Future<TokenEntity> getCachedToken();

  Future<void> clearCacheToken();
}
