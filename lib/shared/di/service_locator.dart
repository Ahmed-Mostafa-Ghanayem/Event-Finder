import 'package:events_finder/features/authenticate/di/authenticate_locator.dart';
import 'package:events_finder/features/home/di/home_locator.dart';
import 'package:events_finder/features/login/di/login_locator.dart';
import 'package:events_finder/features/user/di/user_locator.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.I;

Future<void> initLocators() async {
  initAuthenticationLocator(locator);
  initUserLocator(locator);
  initLoginLocator(locator);
  initHomeLocator(locator);
}
