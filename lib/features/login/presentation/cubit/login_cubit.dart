import 'package:equatable/equatable.dart';
import 'package:events_finder/features/login/domain/use_cases/login_use_case.dart';
import 'package:events_finder/shared/exceptions/validation_exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  String? _username;
  String? _password;
  String? usernameValidation;
  String? passwordValidation;

  LoginCubit({required this.loginUseCase}) : super(const LoginUIState());

  Future<void> login() async {
    emit(const LoginUIState(loading: true));
    try {
      await loginUseCase(_username, _password);
      emit(LoginSuccess());
    } on ValidationException catch (e) {
      if (e.reasons.whereType<InvalidUsername>().isNotEmpty) {
        usernameValidation = "Invalid username";
      }
      if (e.reasons.whereType<InvalidPassword>().isNotEmpty) {
        passwordValidation = "Invalid password";
      }
      emit(
        LoginUIState(
          usernameValidation: usernameValidation,
          passwordValidation: passwordValidation,
        ),
      );
    } on Exception {
      emit(const LoginFailure("Something went wrong!"));
    }
  }

  Future<void> onUsernameChanged(String username) async {
    _username = username;
    usernameValidation = null;
    emit(
      LoginUIState(
        usernameValidation: usernameValidation,
        passwordValidation: passwordValidation,
      ),
    );
  }

  Future<void> onPasswordChanged(String password) async {
    _password = password;
    passwordValidation = null;
    emit(
      LoginUIState(
        usernameValidation: usernameValidation,
        passwordValidation: passwordValidation,
      ),
    );
  }
}
