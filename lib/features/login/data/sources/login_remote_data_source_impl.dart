import 'package:events_finder/features/login/data/models/user_model.dart';

import 'login_remote_data_source.dart';

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  @override
  Future<UserModel> login(String username, String password) async {
    return Future.delayed(
      const Duration(seconds: 3),
      () => const UserModel(
        id: "user@nana.sa",
        firstName: "Ahmed",
        lastName: "Mostafa",
      ),
    );
  }
}
