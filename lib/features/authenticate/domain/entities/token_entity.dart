import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token_entity.g.dart';

@JsonSerializable()
class TokenEntity extends Equatable {
  @JsonKey(name: "access_token")
  final String accessToken;
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @JsonKey(name: "type")
  final String type;

  const TokenEntity({
    required this.accessToken,
    required this.refreshToken,
    required this.type,
  });

  factory TokenEntity.fromJson(Map<String, dynamic> data) =>
      _$TokenEntityFromJson(data);

  @override
  List<Object?> get props => [accessToken, refreshToken, type];
}
