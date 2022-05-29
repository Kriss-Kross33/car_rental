import 'package:car_rental/src/core/constants/app_const.dart';
import 'package:flutter/material.dart';

class AboutUsDescriptionText extends StatelessWidget {
  const AboutUsDescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppConst.aboutUsDescription,
      style: Theme.of(context).textTheme.bodyText2?.copyWith(
            height: 2,
          ),
    );
  }
}
