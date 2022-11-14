import 'package:equatable/equatable.dart';

class ValidationException implements Exception {
  final List<Reason> reasons;

  ValidationException({required this.reasons});
}

abstract class Reason extends Equatable {}

class InvalidUsername extends Reason {
  @override
  List<Object?> get props => [];
}

class InvalidPassword extends Reason {
  @override
  List<Object?> get props => [];
}
