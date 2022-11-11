import 'package:equatable/equatable.dart';
import 'event_entity.dart';

class HomeEntity extends Equatable {
  final String profileImage;
  final List<EventEntity>? myEvents;
  final List<EventEntity>? suggestedEvents;

  const HomeEntity({
    required this.profileImage,
    this.myEvents,
    this.suggestedEvents,
  });

  @override
  List<Object?> get props => [profileImage, myEvents, suggestedEvents];
}
