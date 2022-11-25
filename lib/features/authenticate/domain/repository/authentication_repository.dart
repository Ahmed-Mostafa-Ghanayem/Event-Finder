import 'package:events_finder/features/authenticate/domain/entities/token_entity.dart';

abstract class AuthenticationRepository {
  Future<TokenEntity> authenticate(String username, String password);
}
