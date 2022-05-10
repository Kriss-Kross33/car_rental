import 'package:car_rental/src/core/models/car_details.dart';
import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

class CarDetailsWidet extends StatelessWidget {
  final CarDetailsModel car;
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
          phoneSize: Size(300, 170),
          tabletSize: Size(650, 300),
          desktopSize: Size(750, 330),
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
