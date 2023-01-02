part of 'prices_switcher_cubit.dart';

abstract class PricesSwitcherState extends Equatable {
  const PricesSwitcherState();

  @override
  List<Object> get props => [];
}

class PricesSwitcherInitialState extends PricesSwitcherState {}

class PricesSwitcherChangedState extends PricesSwitcherState {
  final int index;
  final bool isIndicatorSelected;

  const PricesSwitcherChangedState({
    required this.index,
    required this.isIndicatorSelected,
  });

  @override
  List<Object> get props => [
        index,
        isIndicatorSelected,
      ];
}
