import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'desktop/about_us_desktop.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      phone: Container(),
      tablet: Container(),
      desktop: const AboutUsDesktop(),
    );
  }
}
