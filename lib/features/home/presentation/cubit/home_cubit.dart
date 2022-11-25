import 'package:equatable/equatable.dart';
import 'package:events_finder/features/home/domain/entities/home_entity.dart';
import 'package:events_finder/features/home/domain/use_cases/get_home_data_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetHomeDataUseCase getHomeDataUseCase;

  HomeCubit({required this.getHomeDataUseCase}) : super(Initial()) {
    getHomeData();
  }

  Future<void> getHomeData() async {
    emit(Loading());
    try {
      final homeData = await getHomeDataUseCase();
      emit(HomeData(homeData));
    } catch (e) {
      emit(const HomeFailure("Something went wrong!"));
    }
  }
}
