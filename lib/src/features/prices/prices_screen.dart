import 'package:flutter/material.dart';

import '../../responsive_layout.dart';
import 'desktop/prices_desktop.dart';

class PricesScreen extends StatelessWidget {
  const PricesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      phone: Container(),
      tablet: Container(),
      desktop: const PricesDesktop(),
    );
  }
}
