import 'package:events_finder/features/home/presentation/cubit/home_cubit.dart';
import 'package:events_finder/features/home/presentation/screens/home_screen.dart';
import 'package:events_finder/features/login/presentation/cubit/login_cubit.dart';
import 'package:events_finder/shared/di/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  _login() => context.read<LoginCubit>().login();

  _onUsernameChanged(String username) =>
      context.read<LoginCubit>().onUsernameChanged(username);

  _onPasswordChanged(String password) =>
      context.read<LoginCubit>().onPasswordChanged(password);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) => locator<HomeCubit>(),
                child: const HomeScreen(),
              ),
            ),
          );
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
        }
      },
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    onChanged: (username) => _onUsernameChanged(username),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      label: const Text("Username *"),
                      errorText: (state is LoginUIState &&
                              state.usernameValidation?.isNotEmpty == true)
                          ? state.usernameValidation
                          : null,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    obscureText: true,
                    onChanged: (password) => _onPasswordChanged(password),
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      label: const Text("Password *"),
                      errorText: (state is LoginUIState &&
                              state.passwordValidation?.isNotEmpty == true)
                          ? state.passwordValidation
                          : null,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 24),
                  if (state is LoginUIState && state.loading)
                    const CircularProgressIndicator()
                  else
                    ElevatedButton(
                      onPressed: () => {_login()},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          "Login",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
