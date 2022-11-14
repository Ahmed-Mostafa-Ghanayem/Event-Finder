import '../../../../shared/exceptions/validation_exception.dart';
import '../entities/user_entity.dart';
import '../repository/login_repository.dart';

class LoginUseCase {
  final LoginRepository repository;

  LoginUseCase({required this.repository});

  Future<UserEntity> call(String? username, String? password) async {
    final reasons = <Reason>[];
    if (username == null || username.isEmpty) reasons.add(InvalidUsername());
    if (password == null || password.isEmpty) reasons.add(InvalidPassword());

    if (reasons.isEmpty) {
      return repository.login(username!, password!);
    } else {
      throw ValidationException(reasons: reasons);
    }
  }
}
