import '../models/user_model.dart';

abstract class LoginRemoteDataSource {
  Future<UserModel> login(String username, String password);
}