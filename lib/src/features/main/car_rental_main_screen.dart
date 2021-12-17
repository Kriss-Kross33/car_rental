import 'package:car_rental/src/features/main/widgets/widgets.dart';
import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

class CarRentalMainScreen extends StatelessWidget {
  const CarRentalMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ResponsiveLayout.isDesktop(context) ? null : NavigationDrawer(),
      body: ResponsiveLayout(
        phone: PhoneMainWidget(),
        tablet: Container(),
        desktop: DesktopMainWidget(),
      ),
    );
  }
}
