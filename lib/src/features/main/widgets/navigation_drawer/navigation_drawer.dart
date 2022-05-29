import 'package:car_rental/src/features/main/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: const [
          Flexible(
            child: SideBar(),
          ),
        ],
      ),
    );
  }
}
