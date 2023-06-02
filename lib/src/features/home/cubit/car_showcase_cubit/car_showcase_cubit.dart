import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/models/models.dart';

part 'car_showcase_state.dart';

class CarShowcaseCubit extends Cubit<CarShowcaseState> {
  CarShowcaseCubit() : super(const CarShowcaseState());

  void onPageChanged(int index, CarModel car) {
    emit(CarShowcaseChangedState(currentIndex: index, car: car));
  }
}
