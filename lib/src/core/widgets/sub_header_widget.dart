import 'package:flutter/material.dart';

import '../../responsive_layout.dart';

class SubHeaderWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  const SubHeaderWidget({
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
              fontSize: fontSize ?? 36,
              height: 1,
              letterSpacing: 0,
              fontWeight: FontWeight.w400,
            ),
      ),
      tablet: Text(
        text,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
              wordSpacing: 3,
              fontSize: fontSize ?? 36,
              height: 1,
              letterSpacing: 0,
              fontWeight: FontWeight.w400,
            ),
      ),
      desktop: Text(
        text,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
              wordSpacing: 3,
              fontSize: fontSize ?? 36,
              height: 1,
              letterSpacing: 0,
              fontWeight: FontWeight.w400,
            ),
      ),
    );
  }
}
