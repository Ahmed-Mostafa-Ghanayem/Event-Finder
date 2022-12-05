// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventEntity _$EventEntityFromJson(Map<String, dynamic> json) => EventEntity(
      day: json['day'] as String,
      month: json['month'] as String,
      title: json['title'] as String,
      location: json['location'] as String,
      image: json['image'] as String,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      joiners:
          (json['joiners'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$EventEntityToJson(EventEntity instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'title': instance.title,
      'location': instance.location,
      'image': instance.image,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'joiners': instance.joiners,
    };
