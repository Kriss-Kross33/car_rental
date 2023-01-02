import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'prices_switcher_state.dart';

class PricesSwitcherCubit extends Cubit<PricesSwitcherState> {
  PricesSwitcherCubit() : super(PricesSwitcherInitialState());

  void onPricesIndicatorSelected(int index) {
    emit(PricesSwitcherChangedState(
      index: index,
      isIndicatorSelected: true,
    ));
  }
}
