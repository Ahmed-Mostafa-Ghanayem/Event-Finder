part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginUIState extends LoginState {
  final bool loading;
  final String? usernameValidation;
  final String? passwordValidation;

  const LoginUIState({
    this.loading = false,
    this.usernameValidation,
    this.passwordValidation,
  });

  @override
  List<Object?> get props => [
        loading,
        usernameValidation,
        passwordValidation,
      ];
}

class LoginSuccess extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginFailure extends LoginState {
  final String message;

  const LoginFailure(this.message);

  @override
  List<Object> get props => [message];
}
