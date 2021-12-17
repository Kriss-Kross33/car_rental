import 'package:flutter/material.dart';

class OrangeDivider extends StatelessWidget {
  final double width;
  final double thickness;

  const OrangeDivider({
    Key? key,
    this.width = 100,
    this.thickness = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: thickness,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
