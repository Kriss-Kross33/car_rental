part of 'car_showcase_cubit.dart';

abstract class CarShowcaseState extends Equatable {
  const CarShowcaseState();

  @override
  List<Object> get props => [];
}

class CarShowcaseInitial extends CarShowcaseState {}

class CarShowcaseChangedState extends CarShowcaseState {
  final int currentIndex;
  const CarShowcaseChangedState({required this.currentIndex});

  @override
  List<Object> get props => [currentIndex];
}
