import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String? email;
  final String? profileImage;

  const UserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.email,
    this.profileImage,
  });

  @override
  List<Object?> get props => [id, firstName, lastName, email, profileImage];
}
