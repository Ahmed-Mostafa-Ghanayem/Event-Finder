import 'package:events_finder/features/login/domain/use_cases/login_use_case.dart';
import 'package:events_finder/features/login/presentation/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

void initLoginLocator(GetIt locator) {
  // use case
  locator.registerFactory<LoginUseCase>(
    () => LoginUseCase(
      authenticateUseCase: locator(),
      getUserUseCase: locator(),
      clearTokenUseCase: locator(),
    ),
  );
  // cubit
  locator.registerFactory<LoginCubit>(
    () => LoginCubit(
      loginUseCase: locator(),
    ),
  );
}
