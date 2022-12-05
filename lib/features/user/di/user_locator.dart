import 'package:events_finder/features/user/data/repository/user_repository_impl.dart';
import 'package:events_finder/features/user/data/sources/user_local_data_source.dart';
import 'package:events_finder/features/user/data/sources/user_local_data_source_impl.dart';
import 'package:events_finder/features/user/data/sources/user_remote_data_source.dart';
import 'package:events_finder/features/user/data/sources/user_remote_data_source_impl.dart';
import 'package:events_finder/features/user/domain/repository/user_repository.dart';
import 'package:events_finder/features/user/domain/use_cases/get_user_use_case.dart';
import 'package:get_it/get_it.dart';

void initUserLocator(GetIt locator) {
  // data sources
  locator.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(httpClient: locator()),
  );
  locator.registerLazySingleton<UserLocalDataSource>(
    () => UserLocalDataSourceImpl(preferences: locator()),
  );
  // repository
  locator.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(remote: locator(), local: locator()),
  );
  // use case
  locator.registerFactory<GetUserUseCase>(
    () => GetUserUseCase(repository: locator()),
  );
}
