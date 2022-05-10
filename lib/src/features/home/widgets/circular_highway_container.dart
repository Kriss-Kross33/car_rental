import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/themes/theme.dart';
import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

class CircularHighwayContainer extends StatelessWidget {
  const CircularHighwayContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ResponsiveLayout(
        phone: CircularImageStack(
          size: 300,
        ),
        tablet: Container(),
        desktop: CircularImageStack(
          size: 600,
        ),
      ),
    );
  }
}

class CircularImageStack extends StatelessWidget {
  final double size;

  const CircularImageStack({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsivePadding(
      phonePadding: const EdgeInsets.only(right: 50, top: 150),
      tabletPadding: const EdgeInsets.only(right: 260, bottom: 70),
      destopPadding: const EdgeInsets.only(right: 260, bottom: 70),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size / 2),
        child: Stack(
          children: [
            Container(
              height: size,
              width: size,
              child: Image.asset(
                AssetConsts.highway2,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: size,
              width: size,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    AppColor.deepOrange.withOpacity(0.7),
                    AppColor.deepOrange.withOpacity(0.9),
                    AppColor.deepOrange.withOpacity(0.9),
                    //Theme.of(context).colorScheme.secondary,
                    // Theme.of(context).colorScheme.secondary
                  ],
                  stops: [0.0, 1.0, 1.0],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
