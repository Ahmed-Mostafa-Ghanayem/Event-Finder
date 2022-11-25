import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'event_entity.dart';

part 'home_entity.g.dart';

@JsonSerializable()
class HomeEntity extends Equatable {
  @JsonKey(name: "profile_image")
  final String profileImage;

  @JsonKey(name: "my_events")
  final List<EventEntity>? myEvents;

  @JsonKey(name: "suggested_events")
  final List<EventEntity>? suggestedEvents;

  const HomeEntity({
    required this.profileImage,
    this.myEvents,
    this.suggestedEvents,
  });

  factory HomeEntity.fromJson(Map<String, dynamic> data) =>
      _$HomeEntityFromJson(data);

  @override
  List<Object?> get props => [profileImage, myEvents, suggestedEvents];
}
