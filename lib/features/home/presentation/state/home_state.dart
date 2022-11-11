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

class Data extends HomeState {
  final HomeEntity homeData;

  const Data(this.homeData);

  @override
  List<Object> get props => [homeData];
}

class Error extends HomeState {
  final String message;

  const Error(this.message);

  @override
  List<Object> get props => [message];
}
