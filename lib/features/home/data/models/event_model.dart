import '../../domain/entities/event_entity.dart';

class EventModel extends EventEntity {
  const EventModel({
    required super.day,
    required super.month,
    required super.title,
    required super.location,
    required super.image,
    required super.startTime,
    required super.endTime,
    super.joiners,
  });
}
