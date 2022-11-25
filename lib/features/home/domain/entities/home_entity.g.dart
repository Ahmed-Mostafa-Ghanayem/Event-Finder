// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeEntity _$HomeEntityFromJson(Map<String, dynamic> json) => HomeEntity(
      profileImage: json['profile_image'] as String,
      myEvents: (json['my_events'] as List<dynamic>?)
          ?.map((e) => EventEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      suggestedEvents: (json['suggested_events'] as List<dynamic>?)
          ?.map((e) => EventEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeEntityToJson(HomeEntity instance) =>
    <String, dynamic>{
      'profile_image': instance.profileImage,
      'my_events': instance.myEvents,
      'suggested_events': instance.suggestedEvents,
    };
