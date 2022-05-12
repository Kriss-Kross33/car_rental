import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'nav_item_state.dart';

class NavItemCubit extends Cubit<NavItemState> {
  NavItemCubit() : super(const NavItemState());

  void onNavItemSelected(int index) {
    emit(NavItemState(currentIndex: index));
  }
}
