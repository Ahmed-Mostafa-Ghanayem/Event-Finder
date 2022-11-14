import 'package:get_it/get_it.dart';

import '../../features/home/di/home_locator.dart';
import '../../features/login/di/login_locator.dart';

final locator = GetIt.I;

Future<void> initLocators() async {
  initHomeLocator(locator);
  initLoginLocator(locator);
}
