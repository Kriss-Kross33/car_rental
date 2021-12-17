import 'package:car_rental/src/core/service_locator/service_locator.dart';
import 'package:car_rental/src/features/about_us/about_us_screen.dart';
import 'package:car_rental/src/features/home/home.dart';
import 'package:car_rental/src/features/main/cubit/nav_item_cubit/nav_item_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomIndexedStackedWidget extends StatefulWidget {
  const CustomIndexedStackedWidget({Key? key}) : super(key: key);

  @override
  _CustomIndexedStackedWidgetState createState() =>
      _CustomIndexedStackedWidgetState();
}

class _CustomIndexedStackedWidgetState
    extends State<CustomIndexedStackedWidget> {
  NavItemCubit _navItemCubit = locator<NavItemCubit>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _navItemCubit.close();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return BlocListener<NavItemCubit, NavItemState>(
      listener: (context, state) {
        print('CURRENT INDEX ${state.currentIndex}');
      },
      child: BlocBuilder<NavItemCubit, NavItemState>(
        builder: (context, state) {
          return IndexedStack(
            index: state.currentIndex,
            children: [
              HomeWidget(),
              AboutUsWidget(),
              Container(
                child: Text('2'),
              ),
              Container(
                child: Text('4'),
              ),
              Container(
                child: Text('5'),
              ),
              Container(
                child: Text('6'),
              ),
            ],
          );
        },
      ),
    );
  }
}
