import 'package:car_rental/src/core/constants/app_const.dart';
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
      title: Text(contact.location),
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 30,
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
                  OrangeDivider(
                    thickness: 3.0,
                    width: 50,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(AppConst.monFri),
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
                      Text(AppConst.satSun),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(contact.weekdaysOpeningHours),
                    ],
                  ),
                ],
              ),
              SizedBox(
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
                  OrangeDivider(
                    thickness: 3.0,
                    width: 50,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(AppConst.phone),
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
                      Text(AppConst.mail),
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
    );
  }
}
