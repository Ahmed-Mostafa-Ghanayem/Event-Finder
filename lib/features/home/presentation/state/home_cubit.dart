import 'package:equatable/equatable.dart';
import 'package:events_finder/features/home/domain/entities/home_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/use_cases/get_home_data.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetHomeDataUseCase getHomeDataUseCase;

  HomeCubit({required this.getHomeDataUseCase}) : super(Initial());

  Future<void> getHomeData() async {
    emit(Loading());
    try {
      final homeData = await getHomeDataUseCase();
      emit(Data(homeData));
    } catch (e) {
      emit(const Error("Something went wrong!"));
    }
  }
}
