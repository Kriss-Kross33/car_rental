import 'package:car_rental/src/features/home/widgets/widgets.dart';
import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      phone: const HomePhone(),
      tablet: Container(),
      desktop: const HomeDesktop(),
    );
  }
}
