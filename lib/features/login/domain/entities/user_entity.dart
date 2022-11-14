import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String username;
  final String? email;
  final String? profileImage;

  const UserEntity({
    required this.id,
    required this.username,
    this.email,
    this.profileImage,
  });

  @override
  List<Object?> get props => [id, username, email, profileImage];
}
