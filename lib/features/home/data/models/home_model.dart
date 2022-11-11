import '../../domain/entities/home_entity.dart';

class HomeModel extends HomeEntity {
  const HomeModel({
    required super.profileImage,
    super.myEvents,
    super.suggestedEvents,
  });
}
