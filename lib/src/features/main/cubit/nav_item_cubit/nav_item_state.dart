part of 'nav_item_cubit.dart';

class NavItemState extends Equatable {
  final int currentIndex;

  NavItemState({this.currentIndex = 0});

  @override
  List<Object> get props => [currentIndex];
}
