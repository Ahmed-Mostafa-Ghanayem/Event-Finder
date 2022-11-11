import 'package:equatable/equatable.dart';

class EventEntity extends Equatable {
  final String day;
  final String month;
  final String title;
  final String location;
  final String image;
  final String startTime;
  final String endTime;
  final List<String>? joiners;

  const EventEntity({
    required this.day,
    required this.month,
    required this.title,
    required this.location,
    required this.image,
    required this.startTime,
    required this.endTime,
    this.joiners,
  });

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
