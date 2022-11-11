import 'package:get_it/get_it.dart';

import '../data/repository/home_repository_impl.dart';
import '../data/sources/home_remote_data_source.dart';
import '../data/sources/home_remote_data_source_impl.dart';
import '../domain/repository/home_repository.dart';
import '../domain/use_cases/get_home_data.dart';
import '../presentation/state/home_cubit.dart';

final sl = GetIt.I;

Future<void> init() async {
  // data sources
  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(),
  );
  // repository
  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(remote: sl()),
  );
  // use case
  sl.registerLazySingleton<GetHomeDataUseCase>(
    () => GetHomeDataUseCase(repository: sl()),
  );
  // cubit
  sl.registerLazySingleton<HomeCubit>(
    () => HomeCubit(getHomeDataUseCase: sl()),
  );
}
