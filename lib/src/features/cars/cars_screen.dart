import 'package:car_rental/src/features/cars/desktop/cars_desktop.dart';
import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

class CarsScreenWidget extends StatelessWidget {
  const CarsScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      phone: Container(),
      tablet: Container(),
      desktop: CarsDesktop(),
    );
  }
}
