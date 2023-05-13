import 'package:car_rental/src/features/contact/common/widgets.dart';
import 'package:car_rental/src/features/contact/models/contact_model.dart';
import 'package:flutter/material.dart';

class ContactListWidget extends StatelessWidget {
  const ContactListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 500,
        child: ListView.separated(
          itemCount: contacts.length + 2,
          itemBuilder: (context, index) {
            if (index == 0 || index == contacts.length + 1) {
              return const SizedBox.shrink();
            }
            return ContactItem(contact: contacts[index - 1]);
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              child: Divider(
                height: 0,
                thickness: 1.3,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
            );
          },
        ),
      ),
    );
  }
}
