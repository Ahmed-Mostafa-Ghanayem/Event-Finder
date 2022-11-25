import 'package:events_finder/features/authenticate/domain/entities/token_entity.dart';

abstract class AuthenticationRemoteDataSource {
  Future<TokenEntity> authenticate(String username, String password);
}
