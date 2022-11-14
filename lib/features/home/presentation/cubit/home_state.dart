part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class Initial extends HomeState {
  @override
  List<Object> get props => [];
}

class Loading extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeData extends HomeState {
  final HomeEntity homeData;

  const HomeData(this.homeData);

  @override
  List<Object> get props => [homeData];
}

class HomeFailure extends HomeState {
  final String message;

  const HomeFailure(this.message);

  @override
  List<Object> get props => [message];
}
