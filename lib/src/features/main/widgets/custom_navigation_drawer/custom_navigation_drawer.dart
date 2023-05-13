import 'package:car_rental/src/features/main/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Theme.of(context).colorScheme.primary,
      child: const Column(
        children: [
          Flexible(
            child: SideBar(),
          ),
        ],
      ),
    );
  }
}
