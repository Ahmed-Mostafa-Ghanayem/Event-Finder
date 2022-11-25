import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity extends Equatable {
  @JsonKey(name: "id")
  final String id;
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "profile_image")
  final String? profileImage;

  const UserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.email,
    this.profileImage,
  });

  factory UserEntity.fromJson(Map<String, dynamic> data) =>
      _$UserEntityFromJson(data);

  @override
  List<Object?> get props => [id, firstName, lastName, email, profileImage];
}
