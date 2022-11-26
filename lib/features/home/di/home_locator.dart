import 'package:events_finder/features/home/data/repository/home_repository_impl.dart';
import 'package:events_finder/features/home/data/sources/home_remote_data_source.dart';
import 'package:events_finder/features/home/data/sources/home_remote_data_source_impl.dart';
import 'package:events_finder/features/home/domain/repository/home_repository.dart';
import 'package:events_finder/features/home/domain/use_cases/get_home_data_use_case.dart';
import 'package:events_finder/features/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

void initHomeLocator(GetIt locator) {
  // data sources
  locator.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(httpClient: locator()),
  );
  // repository
  locator.registerLazySingleton<HomeRepository>(
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
