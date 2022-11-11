import 'package:events_finder/features/home/presentation/state/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observer.dart';
import 'features/home/di/service_locator.dart' as di;
import 'features/home/presentation/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  Bloc.observer = AppBlocObserver();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: BlocProvider(
        create: (context) => di.sl<HomeCubit>(),
        child: const HomeScreen(),
      ),
    ),
  );
}
