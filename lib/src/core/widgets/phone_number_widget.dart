import 'package:car_rental/src/core/constants/app_const.dart';
import 'package:flutter/material.dart';

class PhoneNumberWidget extends StatelessWidget {
  const PhoneNumberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(
            Icons.call,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            AppConst.phoneNumber,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
