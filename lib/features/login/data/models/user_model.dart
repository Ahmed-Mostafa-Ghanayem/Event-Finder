import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    super.email,
    super.profileImage,
  });

  @override
  List<Object?> get props => [id, firstName, lastName, email, profileImage];
}
