import 'package:car_rental/src/core/constants/app_const.dart';
import 'package:car_rental/src/core/service_locator/service_locator.dart';
import 'package:car_rental/src/features/main/cubit/nav_item_cubit/nav_item_cubit.dart';
import 'package:car_rental/src/features/main/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  List<String> menuItems = <String>[
    AppConst.main,
    AppConst.about,
    AppConst.cars,
    AppConst.calendar,
    AppConst.prices,
    AppConst.contact,
  ];

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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: GestureDetector(
            onTap: () {
              _navItemCubit.onNavItemSelected(index);
            },
            child: BlocBuilder<NavItemCubit, NavItemState>(
              bloc: _navItemCubit,
              builder: (context, state) {
                return NavItem(
                  title: menuItems[index],
                  isSelected: state.currentIndex == index ? true : false,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
