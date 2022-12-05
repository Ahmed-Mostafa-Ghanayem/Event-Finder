import 'package:events_finder/features/home/domain/entities/home_entity.dart';

abstract class HomeRepository {
  Future<HomeEntity> getEventsHome();
}