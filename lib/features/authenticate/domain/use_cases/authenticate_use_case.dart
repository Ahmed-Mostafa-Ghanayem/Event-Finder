import 'package:events_finder/features/authenticate/domain/repository/authentication_repository.dart';
import 'package:events_finder/features/authenticate/domain/entities/token_entity.dart';
import 'package:events_finder/shared/exceptions/validation_exception.dart';

class AuthenticateUseCase {
  final AuthenticationRepository repository;

  AuthenticateUseCase({required this.repository});

  Future<TokenEntity> call(String? username, String? password) async {
    final reasons = <Reason>[];
    if (username == null || username.isEmpty) reasons.add(InvalidUsername());
    if (password == null || password.isEmpty) reasons.add(InvalidPassword());

    if (reasons.isEmpty) {
      return repository.authenticate(username!, password!);
    } else {
      throw ValidationException(reasons: reasons);
    }
  }
}
