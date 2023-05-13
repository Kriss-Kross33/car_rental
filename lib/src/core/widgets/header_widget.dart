import 'package:flutter/material.dart';

import '../../responsive_layout.dart';

class HeaderWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  const HeaderWidget({
    Key? key,
    required this.text,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      phone: Text(
        text,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
              wordSpacing: 3,
              fontSize: fontSize ?? 40,
              height: 1,
              letterSpacing: 0,
              fontWeight: FontWeight.bold,
            ),
      ),
      tablet: Text(
        text,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
              wordSpacing: 3,
              fontSize: fontSize ?? 40,
              height: 1,
              letterSpacing: 0,
              fontWeight: FontWeight.bold,
            ),
      ),
      desktop: Text(
        text,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
              wordSpacing: 3,
              fontSize: fontSize ?? 40,
              height: 1,
              letterSpacing: 0,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
