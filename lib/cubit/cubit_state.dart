import 'package:equatable/equatable.dart';

abstract class CubitState extends Equatable {}

class InitialState extends CubitState {
  @override
  List<Object?> get props => [];
}

class HomeState extends CubitState {
  @override
  List<Object?> get props => [];
}
