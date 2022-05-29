import 'package:car_rental/src/core/constants/app_const.dart';
import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/themes/theme.dart';
import 'package:car_rental/src/core/widgets/widgets.dart';
import 'package:car_rental/src/features/contact/common/widgets.dart';
import 'package:flutter/material.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 100,
              right: 100,
              bottom: 50,
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const HeaderWidget(
                      text: AppConst.contact,
                      fontSize: 50,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const OrangeDivider(
                      width: 60,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      AppConst.ourPoints,
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      height: 1,
                      thickness: 1.3,
                      color: Theme.of(context).colorScheme.primaryVariant,
                    ),
                    const ContactListWidget()
                  ],
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
