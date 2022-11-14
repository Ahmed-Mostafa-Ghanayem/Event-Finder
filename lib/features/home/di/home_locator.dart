import 'package:get_it/get_it.dart';

import '../data/repository/home_repository_impl.dart';
import '../data/sources/home_remote_data_source.dart';
import '../data/sources/home_remote_data_source_impl.dart';
import '../domain/repository/home_repository.dart';
import '../domain/use_cases/get_home_data_use_case.dart';
import '../presentation/cubit/home_cubit.dart';

Future<void> initHomeLocator(GetIt locator) async {
  // data sources
  locator.registerFactory<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(),
  );
  // repository
  locator.registerFactory<HomeRepository>(
    () => HomeRepositoryImpl(remote: locator()),
  );
  // use case
  locator.registerFactory<GetHomeDataUseCase>(
    () => GetHomeDataUseCase(repository: locator()),
  );
  // cubit
  locator.registerFactory<HomeCubit>(
    () => HomeCubit(getHomeDataUseCase: locator()),
  );
}
