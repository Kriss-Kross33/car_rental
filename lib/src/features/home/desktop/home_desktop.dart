import 'package:car_rental/src/core/constants/app_const.dart';
import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/themes/theme.dart';
import 'package:car_rental/src/core/widgets/widgets.dart';
import 'package:car_rental/src/features/home/widgets/widgets.dart';
import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(),
            ),
            Expanded(
              flex: 3,
              child: ClipRect(
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    AppColor.imageBgColor,
                    //Theme.of(context).colorScheme.secondary,
                    BlendMode.color,
                  ),
                  child: RightSidePanel(
                    child: Image.asset(
                      AssetConsts.highway2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const CircularHighwayContainer(),
        const ResponsivePadding(
          phonePadding: EdgeInsets.only(top: 500, right: 200),
          tabletPadding: EdgeInsets.only(top: 300, right: 200),
          destopPadding: EdgeInsets.only(top: 320, right: 200),
          child: Align(
            alignment: Alignment.centerRight,
            child: CarPageViewWidget(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 220,
            left: 115,
            right: 100,
            bottom: 50,
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    AppConst.rentACar,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          wordSpacing: 3,
                          fontSize: 80,
                          height: 1,
                          letterSpacing: 3,
                        ),
                  ),
                  Text(
                    AppConst.fromPrice,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 60,
                          height: 1,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const OrangeDivider(
                    width: 80,
                    thickness: 8,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
