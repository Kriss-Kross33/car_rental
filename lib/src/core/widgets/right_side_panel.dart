import 'package:flutter/material.dart';

class RightSidePanel extends StatelessWidget {
  final Widget child;
  const RightSidePanel({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: child,
    );
  }
}
