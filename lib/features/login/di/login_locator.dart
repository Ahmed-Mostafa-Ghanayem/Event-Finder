import 'package:get_it/get_it.dart';

import '../data/repository/login_repository_impl.dart';
import '../data/sources/login_remote_data_source.dart';
import '../data/sources/login_remote_data_source_impl.dart';
import '../domain/repository/login_repository.dart';
import '../domain/use_cases/login_use_case.dart';
import '../presentation/cubit/login_cubit.dart';

Future<void> initLoginLocator(GetIt locator) async {
  // data sources
  locator.registerFactory<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(),
  );
  // repository
  locator.registerFactory<LoginRepository>(
    () => LoginRepositoryImpl(remote: locator()),
  );
  // use case
  locator.registerFactory<LoginUseCase>(
    () => LoginUseCase(repository: locator()),
  );
  // cubit
  locator.registerFactory<LoginCubit>(
    () => LoginCubit(loginUseCase: locator()),
  );
}
