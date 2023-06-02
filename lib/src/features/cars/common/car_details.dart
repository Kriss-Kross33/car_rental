import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

import '../../../core/models/models.dart';

class CarDetailsWidet extends StatelessWidget {
  final CarModel car;
  final PageController controller;
  final int index;
  const CarDetailsWidet({
    Key? key,
    required this.car,
    required this.controller,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ResponsiveContainer(
          phoneSize: const Size(100, 170),
          tabletSize: const Size(650, 300),
          desktopSize: const Size(850, 400),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  car.imagePath,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
