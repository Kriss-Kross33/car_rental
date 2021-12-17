import 'package:car_rental/src/features/main/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PhoneMainWidget extends StatelessWidget {
  const PhoneMainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BodyWidget(),
        // Row(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     Expanded(
        //       child: BodyWidget(),
        //     ),
        //   ],
        // ),
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
          ),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 50, top: 30),
        //   child: PhoneNumberWidget(),
        // ),
      ],
    );
  }
}
