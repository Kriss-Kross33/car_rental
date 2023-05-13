import 'package:car_rental/src/core/constants/app_const.dart';
import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/themes/theme.dart';
import 'package:car_rental/src/core/widgets/widgets.dart';
import 'package:car_rental/src/features/about_us/common/about_us_description_text.dart';
import 'package:flutter/material.dart';

class AboutUsDesktop extends StatelessWidget {
  const AboutUsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 175,
              left: 100,
              right: 100,
              bottom: 50,
            ),
            child: Stack(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    HeaderWidget(
                      text: AppConst.about,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SubHeaderWidget(text: AppConst.aboutUsSubHeader),
                    SizedBox(
                      height: 20,
                    ),
                    OrangeDivider(
                      width: 60,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AboutUsDescriptionText(),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Our Brand',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'What\'s new',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Soon',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
    );
  }
}
