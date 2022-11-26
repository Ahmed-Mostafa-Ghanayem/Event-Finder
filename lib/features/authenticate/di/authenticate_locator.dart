import 'package:events_finder/features/authenticate/data/repository/authentication_repository_impl.dart';
import 'package:events_finder/features/authenticate/data/sources/authentication_remote_data_source.dart';
import 'package:events_finder/features/authenticate/data/sources/authentication_remote_data_source_impl.dart';
import 'package:events_finder/features/authenticate/domain/repository/authentication_repository.dart';
import 'package:events_finder/features/authenticate/domain/use_cases/authenticate_use_case.dart';
import 'package:events_finder/features/authenticate/domain/use_cases/clear_token_use_case.dart';
import 'package:get_it/get_it.dart';

Future<void> initAuthenticationLocator(GetIt locator) async {
  // data sources
  locator.registerFactory<AuthenticationRemoteDataSource>(
    () => AuthenticationRemoteDataSourceImpl(),
  );
  // repository
  locator.registerFactory<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(remote: locator()),
  );
  // use case
  locator.registerFactory<AuthenticateUseCase>(
    () => AuthenticateUseCase(repository: locator()),
  );
  locator.registerFactory<ClearTokenUseCase>(
    () => ClearTokenUseCase(repository: locator()),
  );
}
