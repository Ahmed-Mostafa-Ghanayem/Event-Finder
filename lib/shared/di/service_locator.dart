import 'package:dio/dio.dart';
import 'package:events_finder/features/authenticate/di/authenticate_locator.dart';
import 'package:events_finder/features/home/di/home_locator.dart';
import 'package:events_finder/features/login/di/login_locator.dart';
import 'package:events_finder/features/user/di/user_locator.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.I;

Future<void> initLocators() async {
  await initShared(locator);
  initAuthenticationLocator(locator);
  initUserLocator(locator);
  initLoginLocator(locator);
  initHomeLocator(locator);
}

Future<void> initShared(GetIt locator) async {
  // network client
  locator.registerLazySingleton<Dio>(() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.options
      ..baseUrl = "https://4uc1gdg1vf.api.quickmocker.com/"
      ..responseType = ResponseType.plain
      ..followRedirects = false;
    return dio;
  });

  // key value storage
  locator.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );
}
