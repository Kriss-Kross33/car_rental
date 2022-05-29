import 'package:car_rental/src/features/main/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SidebarSection extends StatelessWidget {
  const SidebarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 150, bottom: 10),
        child: SizedBox(
          child: Row(
            children: [
              const Flexible(
                child: SideBar(),
              ),
              Container(
                color: Theme.of(context).colorScheme.primaryVariant,
                child: const VerticalDivider(
                  width: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
