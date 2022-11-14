import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.username,
    super.email,
    super.profileImage,
  });

  @override
  List<Object?> get props => [id, username, email, profileImage];
}
