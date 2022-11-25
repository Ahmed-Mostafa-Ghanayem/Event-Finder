import 'package:events_finder/features/authenticate/domain/use_cases/authenticate_use_case.dart';
import 'package:events_finder/features/user/domain/entities/user_entity.dart';
import 'package:events_finder/features/user/domain/use_cases/get_user_use_case.dart';

class LoginUseCase {
  final AuthenticateUseCase authenticateUseCase;
  final GetUserUseCase getUserUseCase;

  LoginUseCase({
    required this.authenticateUseCase,
    required this.getUserUseCase,
  });

  Future<UserEntity> call(String? username, String? password) async {
    return authenticateUseCase(username, password)
        .then((value) => getUserUseCase());
  }
}
