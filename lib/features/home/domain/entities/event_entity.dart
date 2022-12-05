import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_entity.g.dart';

@JsonSerializable()
class EventEntity extends Equatable {
  @JsonKey(name: "day")
  final String day;

  @JsonKey(name: "month")
  final String month;

  @JsonKey(name: "title")
  final String title;

  @JsonKey(name: "location")
  final String location;

  @JsonKey(name: "image")
  final String image;

  @JsonKey(name: "start_time")
  final String? startTime;

  @JsonKey(name: "end_time")
  final String? endTime;

  @JsonKey(name: "joiners")
  final List<String>? joiners;

  const EventEntity({
    required this.day,
    required this.month,
    required this.title,
    required this.location,
    required this.image,
    this.startTime,
    this.endTime,
    this.joiners,
  });

  factory EventEntity.fromJson(Map<String, dynamic> data) =>
      _$EventEntityFromJson(data);

  @override
  List<Object?> get props => [
        day,
        month,
        title,
        location,
        image,
        startTime,
        endTime,
        joiners,
      ];
}
