import 'package:car_rental/src/core/models/car_model.dart';
import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

class CarWidget extends StatefulWidget {
  final CarModel car;
  final PageController controller;
  final int index;
  const CarWidget({
    Key? key,
    required this.car,
    required this.controller,
    required this.index,
  }) : super(key: key);

  @override
  _CarWidgetState createState() => _CarWidgetState();
}

class _CarWidgetState extends State<CarWidget>
    with SingleTickerProviderStateMixin<CarWidget> {
  // late AnimationController _fadeAnimationController;

  // late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // _fadeAnimation = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 500),
    // );
    // _fadeAnimation =
    //     Tween(begin: 0.0, end: 1.0).animate(_fadeAnimationController);
    // _fadeAnimationController.forward();
  }

  @override
  void dispose() {
    // _fadeAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveContainer(
          phoneSize: const Size(300, 170),
          tabletSize: const Size(650, 300),
          desktopSize: const Size(650, 330),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  widget.car.imagePath,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          widget.car.name,
          style:
              Theme.of(context).textTheme.headlineMedium?.copyWith(height: 1),
        ),
      ],
    );
  }
}
