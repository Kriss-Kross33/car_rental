import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'desktop/contact_desktop.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      phone: Container(),
      tablet: Container(),
      desktop: ContactDesktop(),
    );
  }
}
