import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'car_details_showcase_event.dart';
part 'car_details_showcase_state.dart';

class CarDetailsShowcaseBloc extends Bloc<CarDetailsShowcaseEvent, CarDetailsShowcaseState> {
  CarDetailsShowcaseBloc() : super(CarDetailsShowcaseInitial()) {
    on<CarDetailsShowcaseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
