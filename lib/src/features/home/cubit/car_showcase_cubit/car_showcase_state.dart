part of 'car_showcase_cubit.dart';

class CarShowcaseState extends Equatable {
  const CarShowcaseState();

  @override
  List<Object> get props => [];
}

class CarShowcaseInitial extends CarShowcaseState {}

class CarShowcaseChangedState extends CarShowcaseState {
  final int currentIndex;
  final CarModel car;
  const CarShowcaseChangedState({
    required this.currentIndex,
    required this.car,
  });

  @override
  List<Object> get props => [currentIndex, car];
}
