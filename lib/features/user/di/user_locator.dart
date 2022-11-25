import 'package:events_finder/features/user/data/repository/user_repository_impl.dart';
import 'package:events_finder/features/user/data/sources/user_remote_data_source.dart';
import 'package:events_finder/features/user/data/sources/user_remote_data_source_impl.dart';
import 'package:events_finder/features/user/domain/repository/user_repository.dart';
import 'package:events_finder/features/user/domain/use_cases/get_user_use_case.dart';
import 'package:get_it/get_it.dart';

Future<void> initUserLocator(GetIt locator) async {
  // data sources
  locator.registerFactory<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(),
  );
  // repository
  locator.registerFactory<UserRepository>(
    () => UserRepositoryImpl(remote: locator()),
  );
  // use case
  locator.registerFactory<GetUserUseCase>(
    () => GetUserUseCase(repository: locator()),
  );
}
