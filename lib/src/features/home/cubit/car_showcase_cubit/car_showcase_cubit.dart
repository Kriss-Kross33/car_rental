import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'car_showcase_state.dart';

class CarShowcaseCubit extends Cubit<CarShowcaseState> {
  CarShowcaseCubit() : super(CarShowcaseInitial());

  void onPreviousPressed(int index) {
    print('INDEX: $index');
    emit(CarShowcaseChangedState(currentIndex: index));
  }

  void onNextPressed(int index) {
    print('INDEX: $index');
    emit(CarShowcaseChangedState(currentIndex: index));
  }
}
