import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observer.dart';
import 'features/login/presentation/cubit/login_cubit.dart';
import 'features/login/presentation/screens/login_screen.dart';
import 'shared/di/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocators();
  Bloc.observer = AppBlocObserver();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: BlocProvider(
        create: (context) => locator<LoginCubit>(),
        child: const LoginScreen(),
      ),
    ),
  );
}
