import 'package:car_rental/src/core/constants/app_const.dart';
import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/themes/theme.dart';
import 'package:car_rental/src/core/widgets/orange_divider.dart';
import 'package:car_rental/src/features/contact/models/contact_model.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final ContactModel contact;
  const ContactItem({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedTextColor: AppColor.black,
      textColor: AppColor.black,
      trailing: const SizedBox.shrink(),
      title: Text(
        contact.location,
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
      children: [
        Stack(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Divider(
                  height: 0,
                  thickness: 1.3,
                  color: Theme.of(context).colorScheme.primaryVariant,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  AssetConsts.top_arrow,
                  height: 15,
                  width: 15,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 30,
                left: 20,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppConst.openingHours,
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const OrangeDivider(
                        thickness: 3.0,
                        width: 50,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(AppConst.monFri),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(contact.weekdaysOpeningHours),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(AppConst.satSun),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(contact.weekdaysOpeningHours),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppConst.info,
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const OrangeDivider(
                        thickness: 3.0,
                        width: 50,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(AppConst.phone),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(contact.phoneNumber),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(AppConst.mail),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(contact.email),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
