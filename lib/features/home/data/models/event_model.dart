import '../../domain/entities/event_entity.dart';

class EventModel extends EventEntity {
  const EventModel({
    required super.day,
    required super.month,
    required super.title,
    required super.location,
    required super.image,
    super.startTime,
    super.endTime,
    super.joiners,
  });
}
