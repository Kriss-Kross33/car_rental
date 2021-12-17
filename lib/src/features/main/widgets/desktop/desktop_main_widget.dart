import 'package:car_rental/src/core/widgets/phone_number_widget.dart';
import 'package:car_rental/src/features/main/widgets/body_widget/body_widget.dart';
import 'package:car_rental/src/features/main/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DesktopMainWidget extends StatelessWidget {
  const DesktopMainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SidebarSection(),
            Expanded(
              child: BodyWidget(),
              flex: 5,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, top: 30),
          child: PhoneNumberWidget(),
        ),
      ],
    );
  }
}
