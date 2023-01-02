import 'package:car_rental/src/core/core.dart';
import 'package:flutter/material.dart';

class PriceSwitcherIndicator extends StatelessWidget {
  final bool isSelected;
  const PriceSwitcherIndicator({
    Key? key,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSelected ? 14 : 10,
      width: isSelected ? 14 : 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isSelected ? 7 : 5),
          color: isSelected ? Colors.transparent : AppColor.lightBlue,
          border: !isSelected
              ? null
              : Border.all(
                  color: AppColor.deepOrange,
                  width: 2,
                )),
    );
  }
}
